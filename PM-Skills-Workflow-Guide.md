# 产品经理 Skills 全流程工作流手册

> 从"连想法都没有"到完整的产品设计交付，共 **9 个阶段、31 个 Skill**。
> 每个阶段告诉你：**用什么 Skill → 怎么用 → 产出什么 → 下一步喂给谁。**

---

## 工作流总览

```
┌─────────────────────────────────────────────────────────────────────────┐
│                                                                         │
│  🤔 连想法都还没有...                                                    │
│    │                                                                    │
│    ▼                                                                    │
│  ┌──────────────────────────┐                                           │
│  │ Phase 0: 从零到想法 ★新   │  idea-exploration (自定义工作流)           │
│  │  "我只有背景，没有idea"   │  → 链接 pestel / company-research /       │
│  │                          │    problem-framing / jtbd / positioning   │
│  └────────────┬─────────────┘                                           │
│               ▼                                                         │
│  💡 现在你有 2-3 个具体想法了                                             │
│    │                                                                    │
│    ▼                                                                    │
│  ┌──────────────────────────┐                                           │
│  │ Phase 1: 市场与环境扫描   │  company-research / pestel / tam-sam-som  │
│  └────────────┬─────────────┘                                           │
│               ▼                                                         │
│  ┌──────────────────────────┐                                           │
│  │ Phase 2: 问题发现与定义   │  discovery-process / problem-statement    │
│  │                          │  problem-framing-canvas / interview-prep  │
│  └────────────┬─────────────┘                                           │
│               ▼                                                         │
│  ┌──────────────────────────┐                                           │
│  │ Phase 3: 用户深度理解     │  proto-persona / jobs-to-be-done         │
│  │                          │  customer-journey-map                     │
│  └────────────┬─────────────┘                                           │
│               ▼                                                         │
│  ┌──────────────────────────┐                                           │
│  │ Phase 4: 方案探索与验证   │  opportunity-solution-tree / lean-ux     │
│  │                          │  recommendation-canvas                    │
│  └────────────┬─────────────┘                                           │
│               ▼                                                         │
│  ┌──────────────────────────┐                                           │
│  │ Phase 5: 愿景与定位       │  positioning / press-release / storyboard│
│  └────────────┬─────────────┘                                           │
│               ▼                                                         │
│  ┌──────────────────────────┐                                           │
│  │ Phase 6: 策略与优先级     │  product-strategy-session / prioritize   │
│  │                          │  feature-investment / acquisition-channel │
│  └────────────┬─────────────┘                                           │
│               ▼                                                         │
│  ┌──────────────────────────┐                                           │
│  │ Phase 7: 需求文档化       │  prd-development / epic-hypothesis       │
│  │                          │  epic-breakdown / user-story / mapping    │
│  └────────────┬─────────────┘                                           │
│               ▼                                                         │
│  ┌──────────────────────────┐                                           │
│  │ Phase 8: 路线图与交付     │  roadmap-planning / workshop             │
│  └──────────────────────────┘                                           │
│               ▼                                                         │
│  🚀 交付                                                                │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## Phase 0：从零到想法 🧠 ★ 自定义 Skill

> **目标：** 你连产品想法都还没有，只有行业背景或领域经验。通过结构化探讨，产出 2-3 个具体的、可验证的产品概念。

### 0.1 idea-exploration — 想法探索工作流（自定义 Skill）

| 项目 | 说明 |
|------|------|
| **何时用** | 你只有领域知识/行业背景，但没有具体的产品 idea |
| **怎么用** | `请使用 idea-exploration skill，帮我从零开始探索产品想法` |
| **需要你提供** | 你的职业背景、行业经验、日常观察到的痛点 |
| **产出** | 2-3 张产品概念卡（含一句话定位、价值主张、MVP 范围、可行性评估） |
| **内部流程** | 5 个阶段，60-120 分钟引导对话 |
| **产出喂给** | → Phase 1 的深度市场扫描，或直接跳到 Phase 2 的 discovery-process |

**5 个子阶段：**

| 阶段 | 做什么 | 时间 | 链接的 Skill |
|------|--------|------|-------------|
| Phase 1: 上下文拆解 | 8 个引导问题，挖掘你的领域知识和观察 | 15-20 min | — |
| Phase 2: 全景扫描 | 宏观趋势 + 竞争格局 + 市场信号 | 15-20 min | pestel-analysis, company-research |
| Phase 3: 痛点深挖 | 痛点-人群矩阵 + JTBD + HMW 问题 | 15-20 min | jobs-to-be-done, problem-framing-canvas |
| Phase 4: 想法结晶 | 转化为具体产品概念卡 | 15-20 min | positioning-statement |
| Phase 5: 快速定位测试 | 5 问压力测试，排名和筛选 | 10-15 min | positioning-statement |

**示例 Prompt：**
```
请使用 idea-exploration skill，帮我从零开始探索产品想法。

我的背景：在能源行业做了 8 年的 IT 系统建设，
主要负责央企的供应链和采购系统。
我注意到企业里有大量重复的跨系统操作，
员工每天花大量时间在不同系统之间搬运数据。
但我不确定该做什么产品，请帮我探索。
```

**产出示例（产品概念卡）：**
```
🥇 Top Pick: AI 跨系统自动操作助手
├─ 一句话：让业务员对着浏览器说句话就能自动完成跨系统操作
├─ 目标用户：央企招采专员、业务操作员
├─ 核心差异：零改造——不碰现有系统，像真人一样操作浏览器
├─ MVP：自动执行"采购需求创建"这一个场景
├─ 5问测试：5/5 ✅
└─ 下一步：用 discovery-process 验证假设
```

> ⚡ **这是起点：** Phase 0 产出的概念卡，就是后续所有阶段的输入。如果你已经有了明确的 idea，可以跳过 Phase 0，直接从 Phase 1 开始。

---

## Phase 1：市场与环境扫描 🔭

> **目标：** 在动手之前，先搞清楚"这个市场值不值得进"。

### 1.1 company-research — 竞品与行业研究

| 项目 | 说明 |
|------|------|
| **何时用** | 有了初步想法，需要了解目标市场、竞争对手、行业趋势 |
| **怎么用** | `请使用 company-research skill，研究以下公司/行业：[公司名或行业关键词]` |
| **需要你提供** | 公司名 / 行业名 / 你想了解的关键问题 |
| **产出** | 公司画像（高管观点、产品策略、组织动态、转型方向） |
| **产出喂给** | → Phase 2 的 problem-statement、Phase 5 的 positioning-statement |

**示例 Prompt：**
```
请使用 company-research skill，研究中国央国企数字化转型领域的主要玩家，
重点关注 RPA 和 AI Agent 赛道的竞争格局。
```

### 1.2 pestel-analysis — 宏观环境扫描

| 项目 | 说明 |
|------|------|
| **何时用** | 需要评估政策、经济、技术等外部因素对产品的影响 |
| **怎么用** | `请使用 pestel-analysis skill，分析 [产品/市场] 的宏观环境` |
| **需要你提供** | 产品描述 / 目标市场 / 地理范围 / 时间跨度 |
| **产出** | PESTEL 六维分析 + 机会与威胁 + 战略建议 |
| **产出喂给** | → Phase 4 的 recommendation-canvas、Phase 6 的 product-strategy-session |

**示例 Prompt：**
```
请使用 pestel-analysis skill，分析"面向中国央国企的 AI 数字员工平台"
在未来 3 年内的宏观环境因素，重点关注政策合规和技术趋势。
```

### 1.3 tam-sam-som-calculator — 市场规模测算

| 项目 | 说明 |
|------|------|
| **何时用** | 需要用数据回答"这个市场有多大？我能切到多少？" |
| **怎么用** | `请使用 tam-sam-som-calculator skill，测算 [产品] 的市场规模` |
| **需要你提供** | 产品定位 / 目标客群 / 地理范围 / 行业细分 / 客单价范围 |
| **产出** | TAM / SAM / SOM 三层测算 + 假设说明 + 1-3 年预测 |
| **产出喂给** | → Phase 6 的 product-strategy-session 和 feature-investment-advisor |

**示例 Prompt：**
```
请使用 tam-sam-som-calculator skill，测算 Revos AI 数字员工平台的市场规模。
目标客群：中国能源、基建类央国企，初期聚焦招采和供应链场景。
预估客单价 50-200 万元/年。
```

---

## Phase 2：问题发现与定义 🔍

> **目标：** 找到真正值得解决的问题，而不是自以为的问题。

### 2.1 discovery-process — 完整发现流程（工作流 Skill）

| 项目 | 说明 |
|------|------|
| **何时用** | 从零开始做产品发现，需要一个端到端的引导流程 |
| **怎么用** | `请使用 discovery-process skill，引导我完成产品发现流程` |
| **需要你提供** | 初始假设 / 利益相关者请求 / 客户反馈 / 数据指标 |
| **产出** | 问题假设 → 研究计划 → 访谈指南 → 洞察汇总 → 方案探索 → GO/PIVOT/KILL 决策 |
| **特点** | 这是一个**工作流 Skill**，它会自动串联调用其他 Skill |
| **产出喂给** | → 自动流转到后续阶段 |

> ⚡ **快捷方式：** 如果你时间充裕且没有明确方向，直接用 discovery-process 就行，它会引导你走完 Phase 2-4 的大部分内容。

### 2.2 discovery-interview-prep — 访谈准备

| 项目 | 说明 |
|------|------|
| **何时用** | 准备去见客户/用户之前，需要一份访谈指南 |
| **怎么用** | `请使用 discovery-interview-prep skill，帮我准备 [目标] 的用户访谈` |
| **需要你提供** | 产品背景 / 研究目标 / 目标用户群 / 约束条件 |
| **产出** | 访谈计划（开场白 → 核心问题 → 避免的偏见 → 成功标准 → 后勤安排） |
| **产出喂给** | → 访谈结束后，将洞察输入给 jobs-to-be-done 和 proto-persona |

**示例 Prompt：**
```
请使用 discovery-interview-prep skill，帮我准备针对央企招采专员的发现访谈。
研究目标：了解他们在跨系统操作中的核心痛点和现有应对方式。
约束：每次访谈 45 分钟，线上进行，受访者可能对"自动化取代工作"敏感。
```

### 2.3 problem-statement — 问题陈述

| 项目 | 说明 |
|------|------|
| **何时用** | 需要把模糊的痛点结构化为一句清晰的问题定义 |
| **怎么用** | `请使用 problem-statement skill，为 [场景] 定义问题` |
| **需要你提供** | 用户研究洞察 / JTBD 分析 / 用户画像 |
| **产出** | "我是.../ 我正在试图.../ 但是.../ 因为.../ 这让我感到..." 格式的问题陈述 |
| **产出喂给** | → Phase 5 的 press-release、Phase 7 的 prd-development |

### 2.4 problem-framing-canvas — 问题框架画布

| 项目 | 说明 |
|------|------|
| **何时用** | 问题看起来很复杂，需要从多个角度重新审视 |
| **怎么用** | `请使用 problem-framing-canvas skill，帮我重新框架 [问题]` |
| **需要你提供** | 初始问题描述 / 症状 / 利益相关者背景 / 假设 |
| **产出** | 三阶段画布（向内看 → 向外看 → 重新定义）+ "How Might We" 问题 |
| **产出喂给** | → problem-statement、opportunity-solution-tree |

**示例 Prompt：**
```
请使用 problem-framing-canvas skill，帮我重新审视这个问题：
"央企业务员花 80% 时间在系统间搬运数据"。
我怀疑这不只是效率问题，可能有更深层的组织和制度原因。
```

---

## Phase 3：用户深度理解 👤

> **目标：** 构建对目标用户的立体认知——他们是谁、要什么、经历了什么。

### 3.1 proto-persona — 假设型用户画像

| 项目 | 说明 |
|------|------|
| **何时用** | 还没做过用户访谈，但需要先对齐团队对用户的理解 |
| **怎么用** | `请使用 proto-persona skill，为 [产品] 的目标用户创建画像` |
| **需要你提供** | 用户研究数据 / 市场数据 / 利益相关者洞察 |
| **产出** | 人物画像（姓名、简介、引言、痛点、目标、决策影响力） |
| **产出喂给** | → customer-journey-map、storyboard、prd-development |

### 3.2 jobs-to-be-done — 用户任务分析

| 项目 | 说明 |
|------|------|
| **何时用** | 需要理解用户的深层动机，而不只是表面需求 |
| **怎么用** | `请使用 jobs-to-be-done skill，分析 [用户群] 的核心任务` |
| **需要你提供** | 目标用户群 / 使用场景 / 当前替代方案 |
| **产出** | 功能性/社交性/情感性任务 + 痛点 + 收益，按重要程度排序 |
| **产出喂给** | → problem-statement、opportunity-solution-tree、prd-development |

**示例 Prompt：**
```
请使用 jobs-to-be-done skill，分析央企招采专员在执行采购流程时的核心任务。
当前替代方案：手动在 3-5 个系统间复制粘贴数据。
```

### 3.3 customer-journey-map — 客户旅程地图

| 项目 | 说明 |
|------|------|
| **何时用** | 需要从端到端视角看用户与产品/服务的完整接触过程 |
| **怎么用** | `请使用 customer-journey-map skill，为 [用户] 创建旅程地图` |
| **需要你提供** | 用户画像 / 触点列表 / 业务目标 |
| **产出** | 按阶段（认知→考虑→使用→忠诚）的旅程地图，含行为、触点、情绪、KPI |
| **产出喂给** | → opportunity-solution-tree、storyboard |

---

## Phase 4：方案探索与验证 🧪

> **目标：** 把发现的问题转化为可测试的解决方案假设。

### 4.1 opportunity-solution-tree — 机会解决方案树

| 项目 | 说明 |
|------|------|
| **何时用** | 有了多个机会点，需要系统化地探索和筛选解决方案 |
| **怎么用** | `请使用 opportunity-solution-tree skill，为 [目标成果] 构建 OST` |
| **需要你提供** | 期望的业务成果 / 发现的机会点 / 可能的解决方案 |
| **产出** | 树状结构（成果 → 机会 → 方案 → POC 选择 + 实验计划） |
| **产出喂给** | → lean-ux-canvas、epic-hypothesis、prd-development |

**示例 Prompt：**
```
请使用 opportunity-solution-tree skill，为以下目标成果构建 OST：
"将央企招采流程的端到端操作时间从 4.5 小时降低到 30 分钟以内"。

已发现的机会点：
1. 跨系统数据自动填写
2. 智能审批路由
3. 操作过程自动录屏存档
```

### 4.2 lean-ux-canvas — 精益 UX 画布

| 项目 | 说明 |
|------|------|
| **何时用** | 需要在开始构建之前，让团队对齐问题假设和验证方式 |
| **怎么用** | `请使用 lean-ux-canvas skill，为 [产品/功能] 创建画布` |
| **需要你提供** | 业务背景 / 用户背景 / 产品概要 |
| **产出** | 8 格画布（问题 → 成果 → 用户 → 收益 → 方案 → 假设 → 优先学习 → 实验设计） |
| **产出喂给** | → epic-hypothesis、prd-development |

### 4.3 recommendation-canvas — 推荐评估画布

| 项目 | 说明 |
|------|------|
| **何时用** | 需要全面评估一个 AI 产品创意是否值得投入 |
| **怎么用** | `请使用 recommendation-canvas skill，评估 [产品创意]` |
| **需要你提供** | 问题理解 / 用户画像 / 市场背景 / 商业约束 |
| **产出** | 评估画布（业务/客户成果 → 假设 → 定位 → 风险 → 价值论证 → 成功指标） |
| **产出喂给** | → product-strategy-session、prd-development |

---

## Phase 5：愿景与定位 🎯

> **目标：** 把"解决方案"升华为"产品愿景"，让人一听就懂、一听就想要。

### 5.1 positioning-statement — 定位声明

| 项目 | 说明 |
|------|------|
| **何时用** | 需要用一句话说清楚产品是什么、给谁用、跟别人有什么不同 |
| **怎么用** | `请使用 positioning-statement skill，为 [产品] 创建定位声明` |
| **需要你提供** | 目标客户 / 未满足需求 / 产品品类 / 竞争对手 |
| **产出** | Geoffrey Moore 格式：价值主张 + 差异化声明 |
| **产出喂给** | → press-release、prd-development |

### 5.2 press-release — 亚马逊式新闻稿

| 项目 | 说明 |
|------|------|
| **何时用** | 需要从"客户视角"验证产品愿景是否有吸引力 |
| **怎么用** | `请使用 press-release skill，为 [产品] 写一份倒推式新闻稿` |
| **需要你提供** | 产品描述 / 用户画像 / 问题陈述 / 核心收益 |
| **产出** | 新闻稿（标题 → 副标题 → 问题 → 方案 → 客户引言 → CTA） |
| **产出喂给** | → prd-development（作为开篇愿景章节） |

### 5.3 storyboard — 六帧故事板

| 项目 | 说明 |
|------|------|
| **何时用** | 需要用"故事"让利益相关者/投资人秒懂产品价值 |
| **怎么用** | `请使用 storyboard skill，为 [产品] 创建故事板` |
| **需要你提供** | 用户画像 / 问题陈述 / 解决方案 / 期望结果 |
| **产出** | 六帧叙事（主角登场 → 遇到问题 → 危机时刻 → 发现方案 → 顿悟时刻 → 美好结局） |
| **产出喂给** | → prd-development（作为开篇故事章节）、pitch deck |

---

## Phase 6：策略与优先级 📊

> **目标：** 决定"先做什么、后做什么、不做什么"。

### 6.1 product-strategy-session — 产品策略研讨（工作流 Skill）

| 项目 | 说明 |
|------|------|
| **何时用** | 需要一站式完成从定位到路线图的全套策略规划 |
| **怎么用** | `请使用 product-strategy-session skill，为 [产品] 运行策略研讨` |
| **需要你提供** | 战略方向 / 利益相关者输入 / 发现结果 |
| **产出** | 定位 + 画像 + JTBD + 问题定义 + OST + 史诗假设 + 路线图 |
| **特点** | 这是一个**工作流 Skill**，串联多个子 Skill |

> ⚡ **快捷方式：** 如果你已经有了 Phase 1-5 的产出，直接把它们喂给 product-strategy-session，可以快速生成策略框架。

### 6.2 prioritization-advisor — 优先级方法论顾问

| 项目 | 说明 |
|------|------|
| **何时用** | 有一堆功能要排优先级，但不确定用什么方法（RICE？ICE？价值/工作量矩阵？） |
| **怎么用** | `请使用 prioritization-advisor skill，帮我选择优先级方法论` |
| **需要你提供** | 产品阶段 / 团队情况 / 数据可用性 / 决策方风格 |
| **产出** | 推荐的优先级框架 + 使用步骤 |
| **产出喂给** | → roadmap-planning |

### 6.3 feature-investment-advisor — 功能投资评估

| 项目 | 说明 |
|------|------|
| **何时用** | 需要用财务数据回答"这个功能值不值得做" |
| **怎么用** | `请使用 feature-investment-advisor skill，评估 [功能] 的投资价值` |
| **需要你提供** | 功能描述 / MRR/ARR / ARPU / 流失率 / 开发成本 |
| **产出** | Build / 战略性 Build / Don't Build / 先验证，附 ROI 分析 |
| **产出喂给** | → roadmap-planning、prd-development |

### 6.4 acquisition-channel-advisor — 获客渠道评估

| 项目 | 说明 |
|------|------|
| **何时用** | 需要评估各获客渠道的投入产出比 |
| **怎么用** | `请使用 acquisition-channel-advisor skill，评估 [产品] 的获客渠道` |
| **需要你提供** | 渠道详情 / CAC / LTV / 流失率 |
| **产出** | 各渠道的 Scale / Test / Kill 建议 + 预算分配建议 |
| **产出喂给** | → 商业计划、GTM 策略 |

---

## Phase 7：需求文档化 📋

> **目标：** 把策略转化为可执行的需求文档。

### 7.1 prd-development — PRD 编写（工作流 Skill）

| 项目 | 说明 |
|------|------|
| **何时用** | 需要输出完整的产品需求文档 |
| **怎么用** | `请使用 prd-development skill，为 [产品] 编写 PRD` |
| **需要你提供** | 前面各阶段的产出（问题陈述、画像、JTBD、定位、方案等） |
| **产出** | 完整 PRD（问题 → 画像 → 策略 → 方案 → 指标 → 用户故事 → 排除范围 → 依赖） |
| **特点** | 这是一个**工作流 Skill**，会引导你逐步完成 |

> 💡 **最佳实践：** 在调用 prd-development 时，把 Phase 1-6 的产出文档都 @ 进来，PRD 质量会大幅提升。

### 7.2 epic-hypothesis — 史诗假设

| 项目 | 说明 |
|------|------|
| **何时用** | 需要把一个大的产品方向转化为可验证的假设 |
| **怎么用** | `请使用 epic-hypothesis skill，为 [功能方向] 撰写史诗假设` |
| **需要你提供** | 问题 / 用户画像 / JTBD / 当前替代方案 |
| **产出** | If/Then 假设 + 小型实验设计 + 验证指标 |
| **产出喂给** | → epic-breakdown-advisor |

### 7.3 epic-breakdown-advisor — 史诗拆解

| 项目 | 说明 |
|------|------|
| **何时用** | 一个 Epic 太大了，需要拆成可交付的 Story |
| **怎么用** | `请使用 epic-breakdown-advisor skill，拆解 [Epic]` |
| **需要你提供** | Epic 描述 / 验收标准 / 用户画像 / 估算 |
| **产出** | Story 列表 + 拆分模式（工作流/CRUD/规则等）+ INVEST 检查 |
| **产出喂给** | → user-story |

### 7.4 user-story — 用户故事编写

| 项目 | 说明 |
|------|------|
| **何时用** | 需要为开发团队编写可执行的用户故事 |
| **怎么用** | `请使用 user-story skill，为 [需求] 编写用户故事` |
| **需要你提供** | 用户画像 / 问题 / 期望结果 / 约束 |
| **产出** | "As a... I want... So that..." + Gherkin 验收标准（Given/When/Then） |
| **产出喂给** | → 开发团队的 Sprint Backlog |

### 7.5 user-story-splitting — 故事拆分

| 项目 | 说明 |
|------|------|
| **何时用** | 一个 Story 的点数太高，需要进一步拆分 |
| **怎么用** | `请使用 user-story-splitting skill，拆分 [Story]` |
| **需要你提供** | 原始 Story + 验收标准 |
| **产出** | 拆分后的多个小 Story + 每个拆分的理由 |

### 7.6 user-story-mapping — 用户故事地图

| 项目 | 说明 |
|------|------|
| **何时用** | 需要把所有 Story 组织成一张全景图，规划 MVP 和迭代切片 |
| **怎么用** | `请使用 user-story-mapping skill，为 [产品] 创建故事地图` |
| **需要你提供** | 用户画像 / JTBD / 活动 / 步骤 / 任务 |
| **产出** | 故事地图（横轴=用户旅程，纵轴=优先级切片：MVP / V2 / Later） |
| **产出喂给** | → roadmap-planning |

---

## Phase 8：路线图与交付 🚀

> **目标：** 把需求排成路线图，对齐利益相关者，开始执行。

### 8.1 roadmap-planning — 路线图规划（工作流 Skill）

| 项目 | 说明 |
|------|------|
| **何时用** | 需要把优先级排序的功能排进时间线 |
| **怎么用** | `请使用 roadmap-planning skill，为 [产品] 规划路线图` |
| **需要你提供** | 业务目标 / 客户问题 / 技术约束 / 利益相关者请求 |
| **产出** | 史诗假设 + 优先级排序 + 排期路线图（Now/Next/Later 或按季度）+ 利益相关者对齐 |
| **特点** | 这是一个**工作流 Skill**，串联优先级排序、Epic 定义、利益相关者对齐 |

### 8.2 workshop-facilitation — 研讨引导

| 项目 | 说明 |
|------|------|
| **何时用** | 需要组织一场 PM 研讨会（如需求评审、优先级讨论、策略对齐） |
| **怎么用** | `请使用 workshop-facilitation skill，引导 [主题] 研讨会` |
| **需要你提供** | 研讨主题 / 参与者 / 预期产出 |
| **产出** | 研讨流程 + 决策点 + 进度标签 + 会议纪要 |

---

## 实战速查表

### 场景 0：我连想法都没有，只有行业背景 ★新

```
Phase 0 (idea-exploration) → Phase 1 或 Phase 2
  60-120 分钟引导对话，产出 2-3 个产品概念卡
```

**推荐路径：**
```
1. idea-exploration          → 从零探索出 2-3 个想法   (60-120 min)
2. discovery-process         → 验证最佳想法            (2-4 周)
3. prd-development           → 输出完整 PRD            (30 min)
```

### 场景 1：我有一个模糊的想法

```
Phase 1 → Phase 2 → Phase 3 → Phase 4 → Phase 5 → Phase 7
  全部走一遍，大约 2-3 小时可以产出一份完整 PRD
```

**推荐快捷路径：**
```
1. company-research          → 了解市场              (10 min)
2. problem-framing-canvas    → 定义真问题            (15 min)
3. proto-persona             → 画出目标用户          (10 min)
4. jobs-to-be-done           → 理解用户动机          (15 min)
5. opportunity-solution-tree → 探索方案              (15 min)
6. positioning-statement     → 一句话定位            (10 min)
7. press-release             → 验证愿景是否动人      (15 min)
8. storyboard                → 用故事打动人          (10 min)
9. prd-development           → 输出完整 PRD          (30 min)
```

### 场景 2：老板让我做一个竞品分析

```
1. company-research     → 每个竞品走一遍
2. pestel-analysis      → 分析行业大环境
3. tam-sam-som-calculator → 测市场规模
4. positioning-statement → 找到我们的差异化
```

### 场景 3：已有 PRD，需要拆解给开发

```
1. epic-hypothesis       → 把 PRD 中的功能模块转为可验证假设
2. epic-breakdown-advisor → 拆成 Story
3. user-story            → 写用户故事 + 验收标准
4. user-story-mapping    → 组织成故事地图
5. roadmap-planning      → 排进路线图
```

### 场景 4：产品已上线，需要规划下一版

```
1. customer-journey-map  → 分析当前用户旅程
2. jobs-to-be-done       → 发现未满足的需求
3. feature-investment-advisor → 评估每个功能的 ROI
4. prioritization-advisor → 选择排序方法
5. roadmap-planning      → 输出路线图
```

### 场景 5：需要说服投资人/领导

```
1. positioning-statement → 清晰定位
2. press-release         → 愿景新闻稿
3. storyboard            → 故事板
4. tam-sam-som-calculator → 市场数据
5. prd-development       → 带上面内容的完整 PRD
```

---

## Skill 全景速查表

| # | Skill | 类型 | 阶段 | 一句话说明 |
|---|-------|------|------|-----------|
| ★ | **full-product-workflow** | **元工作流** | **Phase 0-8** | **一句话启动全流程——自动编排所有 Skill** |
| 0 | **idea-exploration** ★ | **工作流** | **Phase 0** | **从零到想法——无 idea 时的探索引导** |
| 1 | company-research | 组件 | Phase 1 | 竞品/行业研究报告 |
| 2 | pestel-analysis | 组件 | Phase 1 | 宏观环境六维扫描 |
| 3 | tam-sam-som-calculator | 组件 | Phase 1 | 市场规模三层测算 |
| 4 | discovery-process | **工作流** | Phase 2 | 端到端产品发现引导 |
| 5 | discovery-interview-prep | 组件 | Phase 2 | 用户访谈准备 |
| 6 | problem-statement | 组件 | Phase 2 | 结构化问题陈述 |
| 7 | problem-framing-canvas | 组件 | Phase 2 | 问题重新框架画布 |
| 8 | proto-persona | 组件 | Phase 3 | 假设型用户画像 |
| 9 | jobs-to-be-done | 组件 | Phase 3 | 用户任务/动机分析 |
| 10 | customer-journey-map | 组件 | Phase 3 | 客户旅程地图 |
| 11 | customer-journey-mapping-workshop | 交互 | Phase 3 | 客户旅程协作研讨 |
| 12 | opportunity-solution-tree | 组件 | Phase 4 | 机会-方案映射树 |
| 13 | lean-ux-canvas | 组件 | Phase 4 | 精益 UX 对齐画布 |
| 14 | recommendation-canvas | 组件 | Phase 4 | AI 产品评估画布 |
| 15 | positioning-statement | 组件 | Phase 5 | 一句话产品定位 |
| 16 | positioning-workshop | 交互 | Phase 5 | 定位协作研讨 |
| 17 | press-release | 组件 | Phase 5 | 亚马逊式倒推新闻稿 |
| 18 | storyboard | 组件 | Phase 5 | 六帧叙事故事板 |
| 19 | product-strategy-session | **工作流** | Phase 6 | 一站式策略研讨 |
| 20 | prioritization-advisor | 组件 | Phase 6 | 优先级方法论推荐 |
| 21 | feature-investment-advisor | 组件 | Phase 6 | 功能投资 ROI 评估 |
| 22 | acquisition-channel-advisor | 组件 | Phase 6 | 获客渠道效率评估 |
| 23 | prd-development | **工作流** | Phase 7 | 完整 PRD 编写 |
| 24 | epic-hypothesis | 组件 | Phase 7 | 史诗级可验证假设 |
| 25 | epic-breakdown-advisor | 组件 | Phase 7 | 史诗拆解为故事 |
| 26 | user-story | 组件 | Phase 7 | 用户故事 + Gherkin |
| 27 | user-story-splitting | 组件 | Phase 7 | 大故事拆分 |
| 28 | user-story-mapping | 组件 | Phase 7 | 故事地图 + MVP 切片 |
| 29 | roadmap-planning | **工作流** | Phase 8 | 路线图规划 |
| 30 | workshop-facilitation | 交互 | Phase 8 | 研讨会引导模式 |

---

## 一句话启动全流程 ★ 推荐

如果你不想手动按阶段调用，**直接用这个**：

```
请使用 full-product-workflow skill，带我从零开始做一个产品。
```

AI 会自动：
1. 评估你的起点（连想法都没有？有模糊方向？有现成文档？）
2. 决定从哪个阶段开始
3. 按 Phase 0 → Phase 8 引导你，自动调用各子 Skill
4. 跨会话保存进度，下次可以续接

**支持续接：**
```
请继续 full-product-workflow，上次完成了 Phase 2，
产出了 @Revos-Positioning.md 和 @Revos-PRD-Vision.md。
请从 Phase 3 继续。
```

---

## 使用技巧

### 1. 如何调用 Skill

在 Cursor 的对话框中直接用自然语言调用即可：

```
请使用 [skill 名称] skill，[你想做的事情]。
```

如果需要用到之前生成的文档，用 `@` 引用：

```
请使用 prd-development skill，基于 @Revos-Positioning.md 和
@Revos-PRD-Vision.md 编写 PRD。
```

### 2. Skill 的三种类型

- **组件 Skill（Component）：** 独立完成一个具体任务，产出一个工件
- **工作流 Skill（Workflow）：** 串联多个组件 Skill，引导你完成一个完整流程
- **交互 Skill（Interactive）：** 一步一步引导你，每步让你做选择

### 3. 产出的流转规则

> **前一个阶段的产出，就是下一个阶段的输入。**

这是最重要的使用原则。例如：
- `proto-persona` 产出的画像 → 喂给 `storyboard` 的主角
- `jobs-to-be-done` 产出的痛点 → 喂给 `problem-statement` 的"但是..."
- `positioning-statement` 产出的定位 → 喂给 `press-release` 的核心信息
- `press-release` + `storyboard` → 喂给 `prd-development` 作为开篇愿景

### 4. 何时可以跳过阶段

| 你的情况 | 可以跳过 | 必须做 |
|---------|---------|--------|
| 连想法都没有 | — | **Phase 0** 起 |
| 已有明确产品想法 | Phase 0 | Phase 1 起 |
| 已经很了解市场 | Phase 0, 1 | Phase 2 起 |
| 已经有用户调研数据 | Phase 0-2 的 discovery | Phase 3 起 |
| 只需要写 PRD | Phase 0-5 | Phase 7 |
| 只需要拆需求给开发 | Phase 0-6 | Phase 7.2-7.6 |
| 需要说服领导 | Phase 0, 4, 6, 7 | Phase 1, 5 |
