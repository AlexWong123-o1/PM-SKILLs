#!/usr/bin/env bash
set -euo pipefail

# ============================================================
#  PM Skills Toolkit — 一键安装脚本
#  用法:
#    curl -fsSL https://raw.githubusercontent.com/OWNER/pm-skills/main/install.sh | bash
#    curl -fsSL ... | bash -s -- --global   # 全局安装
#    curl -fsSL ... | bash -s -- /path/to/project  # 指定项目安装
# ============================================================

REPO="AlexWong123-o1/PM-SKILLs"
BRANCH="main"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

info()  { echo -e "${CYAN}ℹ${NC}  $*"; }
ok()    { echo -e "${GREEN}✓${NC}  $*"; }
warn()  { echo -e "${YELLOW}⚠${NC}  $*"; }
fail()  { echo -e "${RED}✗${NC}  $*"; exit 1; }

usage() {
  cat <<'HELP'
PM Skills Toolkit — 产品经理 AI 技能包安装器

用法:
  install.sh [选项] [目标路径]

选项:
  --global, -g    安装到 ~/.agents/skills（所有 Cursor 项目可用）
  --force, -f     覆盖已有技能（默认跳过已存在的）
  --guide         同时安装 PM-Skills-Workflow-Guide.md
  --help, -h      显示帮助

示例:
  install.sh                 # 安装到当前目录的 .cursor/skills/
  install.sh /path/to/proj   # 安装到指定项目
  install.sh --global        # 全局安装
  install.sh --force         # 覆盖更新
HELP
}

INSTALL_MODE="project"
FORCE=false
WITH_GUIDE=false
TARGET_DIR=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --global|-g)   INSTALL_MODE="global"; shift ;;
    --force|-f)    FORCE=true; shift ;;
    --guide)       WITH_GUIDE=true; shift ;;
    --help|-h)     usage; exit 0 ;;
    -*)            fail "未知选项: $1（使用 --help 查看帮助）" ;;
    *)             TARGET_DIR="$1"; shift ;;
  esac
done

if [[ "$INSTALL_MODE" == "global" ]]; then
  DEST="$HOME/.agents/skills"
elif [[ -n "$TARGET_DIR" ]]; then
  DEST="$TARGET_DIR/.cursor/skills"
else
  DEST="$(pwd)/.cursor/skills"
fi

echo ""
echo -e "${BOLD}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BOLD}  PM Skills Toolkit — 产品经理 AI 技能包${NC}"
echo -e "${BOLD}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
info "安装模式: ${BOLD}$INSTALL_MODE${NC}"
info "目标路径: ${BOLD}$DEST${NC}"
echo ""

if ! command -v git &>/dev/null && ! command -v curl &>/dev/null; then
  fail "需要 git 或 curl，请先安装其中一个"
fi

TMP_DIR=$(mktemp -d)
trap 'rm -rf "$TMP_DIR"' EXIT

info "正在下载技能包..."

if command -v git &>/dev/null; then
  git clone --depth 1 --branch "$BRANCH" "https://github.com/$REPO.git" "$TMP_DIR/repo" 2>/dev/null \
    || fail "下载失败。请检查仓库地址: https://github.com/$REPO"
else
  curl -fsSL "https://github.com/$REPO/archive/refs/heads/$BRANCH.tar.gz" -o "$TMP_DIR/repo.tar.gz" \
    || fail "下载失败。请检查仓库地址: https://github.com/$REPO"
  tar -xzf "$TMP_DIR/repo.tar.gz" -C "$TMP_DIR"
  mv "$TMP_DIR"/pm-skills-* "$TMP_DIR/repo"
fi

ok "下载完成"

SRC="$TMP_DIR/repo/skills"

if [[ ! -d "$SRC" ]]; then
  fail "下载的仓库中找不到 skills/ 目录"
fi

mkdir -p "$DEST"

installed=0
skipped=0
updated=0

for skill_dir in "$SRC"/*/; do
  skill_name=$(basename "$skill_dir")

  if [[ -d "$DEST/$skill_name" ]]; then
    if [[ "$FORCE" == true ]]; then
      rm -rf "$DEST/$skill_name"
      cp -r "$skill_dir" "$DEST/$skill_name"
      ((updated++))
    else
      ((skipped++))
      continue
    fi
  else
    cp -r "$skill_dir" "$DEST/$skill_name"
    ((installed++))
  fi
done

if [[ "$WITH_GUIDE" == true ]] && [[ -f "$TMP_DIR/repo/PM-Skills-Workflow-Guide.md" ]]; then
  if [[ "$INSTALL_MODE" == "global" ]]; then
    cp "$TMP_DIR/repo/PM-Skills-Workflow-Guide.md" "$HOME/.agents/PM-Skills-Workflow-Guide.md"
  elif [[ -n "$TARGET_DIR" ]]; then
    cp "$TMP_DIR/repo/PM-Skills-Workflow-Guide.md" "$TARGET_DIR/PM-Skills-Workflow-Guide.md"
  else
    cp "$TMP_DIR/repo/PM-Skills-Workflow-Guide.md" "$(pwd)/PM-Skills-Workflow-Guide.md"
  fi
  ok "工作流指南已安装"
fi

echo ""
echo -e "${BOLD}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}${BOLD}  安装完成！${NC}"
echo -e "${BOLD}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
ok "新安装: ${BOLD}$installed${NC} 个技能"
[[ $updated -gt 0 ]] && ok "已更新: ${BOLD}$updated${NC} 个技能"
[[ $skipped -gt 0 ]] && warn "已跳过: ${BOLD}$skipped${NC} 个（已存在，使用 --force 覆盖）"
echo ""
info "技能已安装到: ${BOLD}$DEST${NC}"
echo ""
echo -e "  ${CYAN}使用方法:${NC}"
echo -e "  在 Cursor 中对 AI 说："
echo -e "  ${BOLD}\"请使用 full-product-workflow skill\"${NC}"
echo -e "  或"
echo -e "  ${BOLD}\"请使用 idea-exploration skill，帮我从零探索产品想法\"${NC}"
echo ""
