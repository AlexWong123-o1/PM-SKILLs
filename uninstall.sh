#!/usr/bin/env bash
set -euo pipefail

# ============================================================
#  PM Skills Toolkit — 卸载脚本
# ============================================================

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

info()  { echo -e "${CYAN}ℹ${NC}  $*"; }
ok()    { echo -e "${GREEN}✓${NC}  $*"; }
warn()  { echo -e "${YELLOW}⚠${NC}  $*"; }

SKILLS=(
  acquisition-channel-advisor
  company-research
  customer-journey-map
  customer-journey-mapping-workshop
  discovery-interview-prep
  discovery-process
  epic-breakdown-advisor
  epic-hypothesis
  feature-investment-advisor
  full-product-workflow
  idea-exploration
  jobs-to-be-done
  lean-ux-canvas
  opportunity-solution-tree
  pestel-analysis
  positioning-statement
  positioning-workshop
  prd-development
  press-release
  prioritization-advisor
  problem-framing-canvas
  problem-statement
  product-strategy-session
  proto-persona
  recommendation-canvas
  roadmap-planning
  storyboard
  tam-sam-som-calculator
  user-story
  user-story-mapping
  user-story-splitting
  workshop-facilitation
)

UNINSTALL_MODE="project"
TARGET_DIR=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --global|-g)   UNINSTALL_MODE="global"; shift ;;
    *)             TARGET_DIR="$1"; shift ;;
  esac
done

if [[ "$UNINSTALL_MODE" == "global" ]]; then
  DEST="$HOME/.agents/skills"
elif [[ -n "$TARGET_DIR" ]]; then
  DEST="$TARGET_DIR/.cursor/skills"
else
  DEST="$(pwd)/.cursor/skills"
fi

echo ""
echo -e "${BOLD}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BOLD}  PM Skills Toolkit — 卸载${NC}"
echo -e "${BOLD}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
info "目标路径: ${BOLD}$DEST${NC}"
echo ""

removed=0

for skill in "${SKILLS[@]}"; do
  if [[ -d "$DEST/$skill" ]]; then
    rm -rf "$DEST/$skill"
    ok "已删除: $skill"
    ((removed++))
  fi
done

if [[ -f "$(dirname "$DEST")/PM-Skills-Workflow-Guide.md" ]]; then
  warn "工作流指南未删除（手动删除: $(dirname "$DEST")/PM-Skills-Workflow-Guide.md）"
fi

echo ""
ok "卸载完成，共删除 ${BOLD}$removed${NC} 个技能"
echo ""
