# PM Skills Toolkit

**产品经理 AI 技能包** — 31 个 Cursor Agent Skills，覆盖从"连想法都没有"到"交付路线图"的完整产品开发旅程。

> 在 Cursor IDE 中对 AI 说一句话，就能启动结构化的产品管理工作流。

---

## 一键安装

```bash
# 安装到当前项目（推荐）
curl -fsSL https://raw.githubusercontent.com/AlexWong123-o1/pm-skills/main/install.sh | bash

# 安装到指定项目
curl -fsSL https://raw.githubusercontent.com/AlexWong123-o1/pm-skills/main/install.sh | bash -s -- /path/to/your/project

# 全局安装（所有 Cursor 项目可用）
curl -fsSL https://raw.githubusercontent.com/AlexWong123-o1/pm-skills/main/install.sh | bash -s -- --global

# 强制覆盖更新 + 附带工作流指南
curl -fsSL https://raw.githubusercontent.com/AlexWong123-o1/pm-skills/main/install.sh | bash -s -- --force --guide
```

安装完成后，在 Cursor 中对 AI 说：

```
请使用 full-product-workflow skill
```

AI 会自动评估你的起点，引导你走完 9 个阶段。

---

## 包含什么

### 9 阶段产品开发旅程

```
Phase 0: 从零到想法        → idea-exploration
Phase 1: 市场与环境扫描    → company-research, pestel, tam-sam-som
Phase 2: 问题发现与定义    → discovery-process, problem-statement, problem-framing
Phase 3: 用户深度理解      → proto-persona, jobs-to-be-done, customer-journey-map
Phase 4: 方案探索与验证    → opportunity-solution-tree, lean-ux, recommendation-canvas
Phase 5: 愿景与定位        → positioning, press-release, storyboard
Phase 6: 策略与优先级      → product-strategy-session, prioritization, feature-investment
Phase 7: 需求文档化        → prd-development, epic-hypothesis, user-story, story-mapping
Phase 8: 路线图与交付      → roadmap-planning, workshop-facilitation
```

### 31 个技能全表

| # | 技能 | 类型 | 一句话说明 |
|---|------|------|-----------|
| 0 | **full-product-workflow** | 元工作流 | 一句话启动全流程——自动编排所有技能 |
| 1 | idea-exploration | 工作流 | 从零到想法——无 idea 时的探索引导 |
| 2 | company-research | 组件 | 竞品/行业研究报告 |
| 3 | pestel-analysis | 组件 | 宏观环境六维扫描 |
| 4 | tam-sam-som-calculator | 组件 | 市场规模三层测算 |
| 5 | discovery-process | 工作流 | 端到端产品发现引导 |
| 6 | discovery-interview-prep | 组件 | 用户访谈准备 |
| 7 | problem-statement | 组件 | 结构化问题陈述 |
| 8 | problem-framing-canvas | 组件 | 问题重新框架画布 |
| 9 | proto-persona | 组件 | 假设型用户画像 |
| 10 | jobs-to-be-done | 组件 | 用户任务/动机分析 |
| 11 | customer-journey-map | 组件 | 客户旅程地图 |
| 12 | customer-journey-mapping-workshop | 交互 | 客户旅程协作研讨 |
| 13 | opportunity-solution-tree | 组件 | 机会-方案映射树 |
| 14 | lean-ux-canvas | 组件 | 精益 UX 对齐画布 |
| 15 | recommendation-canvas | 组件 | AI 产品评估画布 |
| 16 | positioning-statement | 组件 | 一句话产品定位 |
| 17 | positioning-workshop | 交互 | 定位协作研讨 |
| 18 | press-release | 组件 | 亚马逊式倒推新闻稿 |
| 19 | storyboard | 组件 | 六帧叙事故事板 |
| 20 | product-strategy-session | 工作流 | 一站式策略研讨 |
| 21 | prioritization-advisor | 组件 | 优先级方法论推荐 |
| 22 | feature-investment-advisor | 组件 | 功能投资 ROI 评估 |
| 23 | acquisition-channel-advisor | 组件 | 获客渠道效率评估 |
| 24 | prd-development | 工作流 | 完整 PRD 编写 |
| 25 | epic-hypothesis | 组件 | 史诗级可验证假设 |
| 26 | epic-breakdown-advisor | 组件 | 史诗拆解为故事 |
| 27 | user-story | 组件 | 用户故事 + Gherkin |
| 28 | user-story-splitting | 组件 | 大故事拆分 |
| 29 | user-story-mapping | 组件 | 故事地图 + MVP 切片 |
| 30 | roadmap-planning | 工作流 | 路线图规划 |
| 31 | workshop-facilitation | 交互 | 研讨会引导模式 |

---

## 使用方式

### 全流程（推荐新手）

```
请使用 full-product-workflow skill
```

AI 会自动评估你的起点，从合适的阶段开始引导。

### 单个技能

```
请使用 positioning-statement skill，为我的产品创建 Geoffrey Moore 定位声明
```

### 引用已有产出

前一个阶段的产出是下一个阶段的输入：

```
请使用 prd-development skill，
基于 @Positioning.md 和 @PRD-Vision.md 编写 PRD
```

### 多会话续接

```
请继续 full-product-workflow，上次完成了 Phase 2，
产出了 @Problem-Definition.md。请从 Phase 3 继续。
```

---

## 实战速查

| 你的情况 | 用什么 |
|---------|--------|
| 连想法都没有 | `full-product-workflow` 或 `idea-exploration` |
| 有模糊想法，想验证 | `problem-framing-canvas` → `proto-persona` → `positioning-statement` |
| 需要写 PRD | `prd-development` |
| PRD 已有，要拆给开发 | `epic-hypothesis` → `epic-breakdown-advisor` → `user-story` → `user-story-mapping` |
| 需要说服领导/投资人 | `positioning-statement` → `press-release` → `storyboard` |
| 需要排优先级 | `prioritization-advisor` → `feature-investment-advisor` |

---

## 卸载

```bash
# 卸载当前项目的技能
curl -fsSL https://raw.githubusercontent.com/AlexWong123-o1/pm-skills/main/uninstall.sh | bash

# 卸载全局安装
curl -fsSL https://raw.githubusercontent.com/AlexWong123-o1/pm-skills/main/uninstall.sh | bash -s -- --global
```

---

## 技术细节

- 纯 Markdown，零依赖，总计 ~800KB
- 兼容 Cursor 的 Agent Skills 系统
- 每个技能包含 `SKILL.md`（核心逻辑）+ 可选的 `examples/` 和 `template.md`
- 技能间通过 `@文件名` 引用传递上下文

## 许可

MIT
