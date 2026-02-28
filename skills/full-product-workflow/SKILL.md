---
name: full-product-workflow
description: Orchestrate the complete product development journey — from zero idea to delivery-ready roadmap — by guiding the user through 9 phases and dynamically invoking 30+ sub-skills based on context.
type: workflow
theme: product-management
best_for:
  - "Running a complete product development cycle from idea to delivery"
  - "Guiding a first-time PM through the entire product lifecycle"
  - "Turning a vague direction into a roadmap-ready product plan"
scenarios:
  - "I have no product idea, just industry experience — take me through the full journey"
  - "I have a rough idea and want to develop it into a complete PRD and roadmap"
  - "I want to systematically build a product plan from scratch"
estimated_time: "4-8 hours (can be split across multiple sessions)"
---


## Purpose

Orchestrate the **complete product development journey** from "I don't even have an idea" to "here's the roadmap, let's build." This is the master workflow that chains together 30+ specialized PM skills into a coherent, end-to-end process.

Think of this as the **autopilot mode** — you describe your starting point, and this workflow figures out which phase to begin with, which skills to invoke, and how to pass outputs from one phase to the next.

## Key Concepts

### The 9-Phase Product Development Journey

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

### Core Principle: Output Flows Downstream

Every phase produces artifacts that feed into the next. The AI must maintain a running context of all artifacts generated so far.

### When to Use This
- Starting a product from scratch (no idea yet)
- Systematically developing a product concept into a complete plan
- Learning the PM process by doing it end-to-end

### When NOT to Use This
- You only need one specific skill (use that skill directly)
- You have an existing product and need a minor feature addition
- You're deep in execution and don't need strategic planning

---

### Facilitation Source of Truth

When running this workflow as a guided conversation, use [`workshop-facilitation`](../workshop-facilitation/SKILL.md) as the interaction protocol.

It defines:
- session heads-up + entry mode (Guided, Context dump, Best guess)
- one-question turns with plain-language prompts
- progress labels (for example, Phase X — Step Y)
- interruption handling and pause/resume behavior
- numbered recommendations at decision points
- quick-select numbered response options for regular questions (include `Other (specify)` when useful)

This file defines the workflow sequence and domain-specific outputs. If there is a conflict, follow this file's workflow logic.

---

## Application

### Step 0: Entry Assessment

Before starting any phase, assess the user's current state to determine the correct entry point.

**Ask the user:**

> 让我先了解一下你的起点，这样我可以跳过不需要的阶段。请选择最符合你现状的描述：
>
> 1. 🤔 **我连想法都没有** — 只有行业背景/领域经验，不知道该做什么产品
> 2. 💡 **我有一个模糊的想法** — 知道大方向，但还没深入思考过
> 3. 📋 **我有初步的产品概念** — 知道目标用户和要解决的问题
> 4. 📄 **我有现成的文档/调研** — 有销售资料、技术文档、或市场调研
> 5. 📝 **我已经有 PRD** — 需要拆解成开发任务和路线图
> 6. 🔄 **其他情况** — 请描述

**Entry Routing Logic:**

| User Response | Start From | Skip |
|---------------|------------|------|
| 1. 连想法都没有 | **Phase 0** | — |
| 2. 模糊的想法 | **Phase 1** | Phase 0 |
| 3. 初步概念 | **Phase 2** | Phase 0-1 |
| 4. 现成文档 | **Phase 2** (read docs first) | Phase 0-1 |
| 5. 已有 PRD | **Phase 7.2** | Phase 0-6 |
| 6. 其他 | Assess and decide | — |

---

## Phase 0: 从零到想法 (60-120 min)

**Trigger:** User selected option 1 (no idea)

**Invoke:** `skills/idea-exploration/SKILL.md`

**Process:**
1. Context Unpack — 8 guided questions about domain/background
2. Landscape Scan — Quick PESTEL + competitive gaps
3. Pain Point Deep Dive — Pain-Person matrix + JTBD + HMW questions
4. Idea Crystallization — Product concept cards
5. Quick Positioning Test — 5-question stress test

**Output:** 2-3 Product Concept Cards with rankings

**Decision Point:**
> "你的 Top Pick 是 [概念名]。接下来我们要为它做深度的市场和问题验证。准备好了吗？"

**If YES:** Proceed to Phase 1 with the top concept as input
**If user wants to refine:** Loop back within Phase 0

---

## Phase 1: 市场与环境扫描 (30-45 min)

**Trigger:** User has a product concept (from Phase 0 or brought their own)

**Activities (invoke sequentially):**

**1.1 Competitive & Industry Research**
- **Invoke:** `skills/company-research/SKILL.md`
- **Input:** Product concept + target industry from Phase 0 or user
- **Output:** Competitive landscape, key players, gaps

**1.2 Macro Environment Scan**
- **Invoke:** `skills/pestel-analysis/SKILL.md`
- **Input:** Product domain + geography
- **Output:** Key macro factors, opportunities, threats

**1.3 Market Sizing** (optional, recommend for fundraising/exec buy-in)
- **Invoke:** `skills/tam-sam-som-calculator/SKILL.md`
- **Input:** Product positioning + target segments + pricing
- **Output:** TAM/SAM/SOM with projections

**Phase 1 Artifact:** Market Context Brief
```
## Market Context Brief
- Competitive landscape: [summary]
- Key macro factors: [top 3]
- Market size: TAM $X / SAM $Y / SOM $Z
- Go/No-go signal: [assessment]
```

**Decision Point:**
> "市场扫描结果表明 [总结]。基于这些发现，你想继续深入，还是需要调整方向？"

---

## Phase 2: 问题发现与定义 (45-90 min)

**Trigger:** Market context confirms opportunity is worth exploring

**Activities (choose path):**

**Path A: Full Discovery (if high uncertainty)**
- **Invoke:** `skills/discovery-process/SKILL.md` (this is itself a workflow, runs Phase 2-4 internally)
- **Duration:** 2-4 weeks (includes customer interviews)
- **Output:** Validated problem + solution direction

**Path B: Quick Problem Framing (if moderate certainty)**

**2.1 Problem Framing Canvas**
- **Invoke:** `skills/problem-framing-canvas/SKILL.md`
- **Input:** Market context + product concept
- **Output:** "How Might We" question

**2.2 Problem Statement**
- **Invoke:** `skills/problem-statement/SKILL.md`
- **Input:** Framing canvas output
- **Output:** "I am / Trying to / But / Because / Which makes me feel" statement

**2.3 Interview Prep** (optional but recommended)
- **Invoke:** `skills/discovery-interview-prep/SKILL.md`
- **Input:** Problem hypothesis + target segment
- **Output:** Interview guide for future validation

**Phase 2 Artifact:** Problem Definition Package

**Decision Point:**
> "问题已定义为：[问题陈述]。你对这个定义有信心吗？还是需要先做用户访谈验证？"

---

## Phase 3: 用户深度理解 (30-60 min)

**Trigger:** Problem is defined (from Phase 2)

**Activities (invoke sequentially):**

**3.1 Proto-Persona**
- **Invoke:** `skills/proto-persona/SKILL.md`
- **Input:** Problem statement + market context
- **Output:** 1-3 persona profiles

**3.2 Jobs-to-be-Done**
- **Invoke:** `skills/jobs-to-be-done/SKILL.md`
- **Input:** Persona profiles + problem statement
- **Output:** Functional/emotional/social jobs + pains + gains

**3.3 Customer Journey Map** (optional, use when problem spans multiple touchpoints)
- **Invoke:** `skills/customer-journey-map/SKILL.md`
- **Input:** Persona + touchpoints + problem domain
- **Output:** Journey map with pain points and opportunities

**Phase 3 Artifact:** User Understanding Package (Personas + JTBD + Journey Map)

---

## Phase 4: 方案探索与验证 (30-60 min)

**Trigger:** User understanding is solid (from Phase 3)

**Activities (choose based on context):**

**4.1 Opportunity Solution Tree** (default path)
- **Invoke:** `skills/opportunity-solution-tree/SKILL.md`
- **Input:** Top pain points + desired outcomes from Phase 3
- **Output:** Opportunities → Solutions → POC recommendation

**4.2 Lean UX Canvas** (alternative — if prefer hypothesis-driven)
- **Invoke:** `skills/lean-ux-canvas/SKILL.md`
- **Input:** Business context + user context
- **Output:** 8-box canvas with hypotheses and experiments

**4.3 Recommendation Canvas** (use for AI products)
- **Invoke:** `skills/recommendation-canvas/SKILL.md`
- **Input:** Problem + persona + market context
- **Output:** Build/don't-build recommendation with reasoning

**Phase 4 Artifact:** Solution Direction Package

**Decision Point:**
> "方案探索完成。推荐的方向是 [方案]。接下来要为它打造愿景和定位吗？"

---

## Phase 5: 愿景与定位 (30-45 min)

**Trigger:** Solution direction is chosen (from Phase 4)

**Activities (invoke sequentially — all three work together):**

**5.1 Positioning Statement**
- **Invoke:** `skills/positioning-statement/SKILL.md`
- **Input:** Target user + problem + solution + competitors
- **Output:** Geoffrey Moore format value proposition + differentiation

**5.2 Press Release** (Amazon Working Backwards)
- **Invoke:** `skills/press-release/SKILL.md`
- **Input:** Positioning + persona + problem + solution
- **Output:** Customer-centric press release

**5.3 Storyboard** (6-frame narrative)
- **Invoke:** `skills/storyboard/SKILL.md`
- **Input:** Persona + problem + solution + desired outcome
- **Output:** 6-frame visual narrative

**Phase 5 Artifact:** Vision Package (Positioning + Press Release + Storyboard)

> 💡 **This is the "hook" package** — use these artifacts to open your PRD and make it compelling for decision-makers.

---

## Phase 6: 策略与优先级 (30-60 min)

**Trigger:** Vision is defined (from Phase 5)

**Activities:**

**6.1 Prioritization Framework**
- **Invoke:** `skills/prioritization-advisor/SKILL.md`
- **Input:** Product stage + team context + data availability
- **Output:** Recommended prioritization method

**6.2 Feature Investment Analysis** (for each major feature)
- **Invoke:** `skills/feature-investment-advisor/SKILL.md`
- **Input:** Feature description + revenue/cost data
- **Output:** Build / don't build recommendation with ROI

**6.3 Acquisition Channel Evaluation** (optional, for GTM planning)
- **Invoke:** `skills/acquisition-channel-advisor/SKILL.md`
- **Input:** Channel options + unit economics
- **Output:** Scale / test / kill per channel

**Phase 6 Artifact:** Strategy & Priority Package

---

## Phase 7: 需求文档化 (60-120 min)

**Trigger:** Strategy and priorities are set (from Phase 6)

**This is the core documentation phase. Activities invoke in sequence:**

**7.1 PRD Development** (workflow skill)
- **Invoke:** `skills/prd-development/SKILL.md`
- **Input:** ALL artifacts from Phase 0-6
- **Critical:** Feed the Vision Package (Phase 5) into the PRD's opening sections for maximum impact
- **Output:** Complete PRD

**7.2 Epic Hypotheses**
- **Invoke:** `skills/epic-hypothesis/SKILL.md`
- **Input:** PRD feature modules
- **Output:** If/then hypothesis per epic

**7.3 Epic Breakdown**
- **Invoke:** `skills/epic-breakdown-advisor/SKILL.md`
- **Input:** Each epic from 7.2
- **Output:** Stories per epic using Richard Lawrence's 9 patterns

**7.4 User Stories**
- **Invoke:** `skills/user-story/SKILL.md`
- **Input:** Each story from 7.3
- **Output:** As-a/I-want/So-that + Gherkin acceptance criteria

**7.5 Story Splitting** (if stories are too large)
- **Invoke:** `skills/user-story-splitting/SKILL.md`
- **Input:** Oversized stories
- **Output:** Smaller, independently deliverable stories

**7.6 User Story Mapping**
- **Invoke:** `skills/user-story-mapping/SKILL.md`
- **Input:** All stories from 7.4-7.5
- **Output:** Story map with MVP / V2 / Later slices

**Phase 7 Artifact:** Complete Requirements Package (PRD + Epics + Stories + Story Map)

---

## Phase 8: 路线图与交付 (30-60 min)

**Trigger:** Requirements are documented (from Phase 7)

**Activities:**

**8.1 Roadmap Planning** (workflow skill)
- **Invoke:** `skills/roadmap-planning/SKILL.md`
- **Input:** Story map + priorities + constraints
- **Output:** Now/Next/Later or quarterly roadmap

**8.2 Workshop Facilitation** (for stakeholder alignment)
- **Invoke:** `skills/workshop-facilitation/SKILL.md`
- **Input:** Roadmap + key decisions needing alignment
- **Output:** Facilitated discussion → alignment → sign-off

**Phase 8 Artifact:** Delivery-Ready Roadmap + Stakeholder Alignment

---

## Session Management

### Multi-Session Support

This workflow can be split across multiple sessions. At the end of each session:

1. **Save Progress:** Summarize which phases are complete and which artifacts exist
2. **Bookmark:** Note the current phase and next step
3. **Resume Prompt:** Provide a prompt the user can paste to resume:

```
请继续 full-product-workflow，上次我们完成了 Phase [X]，
产出了 [artifact 列表]。请从 Phase [X+1] 继续。
相关文档：@[file1] @[file2]
```

### Artifact Registry

Maintain a running list of all generated artifacts:

```
## Artifact Registry

| Phase | Artifact | File | Status |
|-------|----------|------|--------|
| 0 | Product Concept Cards | [filename] | ✅ |
| 1 | Market Context Brief | [filename] | ✅ |
| 2 | Problem Definition | [filename] | ✅ |
| 3 | User Understanding Package | [filename] | ✅ |
| 4 | Solution Direction | [filename] | ⏳ |
| ... | ... | ... | ... |
```

---

## Complete Workflow Timeline

```
Session 1 (2-3 hours):
├─ Entry Assessment (5 min)
├─ Phase 0: 从零到想法 (60-120 min) — if needed
├─ Phase 1: 市场扫描 (30-45 min)
└─ Phase 2: 问题定义 (45-90 min)

Session 2 (2-3 hours):
├─ Phase 3: 用户理解 (30-60 min)
├─ Phase 4: 方案探索 (30-60 min)
└─ Phase 5: 愿景定位 (30-45 min)

Session 3 (2-3 hours):
├─ Phase 6: 策略优先级 (30-60 min)
├─ Phase 7: 需求文档化 (60-120 min)
└─ Phase 8: 路线图交付 (30-60 min)
```

**Total: 3 sessions × 2-3 hours = 6-9 hours**

Express mode (skip Phase 0, minimal market scan):
**Total: 2 sessions × 2 hours = 4 hours**

---

## Common Pitfalls

### Pitfall 1: Trying to Do Everything in One Session
**Fix:** Break into 3 sessions. Quality drops after 3 hours of continuous PM work.

### Pitfall 2: Skipping Phase 5 (Vision)
**Fix:** The PRD without a storyboard/press-release is dry and unconvincing. Phase 5 is what makes decision-makers say "yes."

### Pitfall 3: Not Feeding Artifacts Forward
**Fix:** Always @ reference previous phase outputs when invoking the next skill. Context compounds.

### Pitfall 4: Getting Stuck in Analysis
**Fix:** Each phase has a time box. If stuck, use the Decision Point to move forward with what you have.

---

## References

### All Sub-Skills (in execution order)

| Phase | Skills Invoked |
|-------|---------------|
| 0 | idea-exploration |
| 1 | company-research, pestel-analysis, tam-sam-som-calculator |
| 2 | discovery-process OR (problem-framing-canvas + problem-statement + discovery-interview-prep) |
| 3 | proto-persona, jobs-to-be-done, customer-journey-map |
| 4 | opportunity-solution-tree OR lean-ux-canvas, recommendation-canvas |
| 5 | positioning-statement, press-release, storyboard |
| 6 | prioritization-advisor, feature-investment-advisor, acquisition-channel-advisor |
| 7 | prd-development, epic-hypothesis, epic-breakdown-advisor, user-story, user-story-splitting, user-story-mapping |
| 8 | roadmap-planning, workshop-facilitation |

### Workshop Skills (available throughout)
- positioning-workshop (Phase 5 alternative)
- customer-journey-mapping-workshop (Phase 3 alternative)

---

**Skill type:** Workflow (meta-orchestrator)
**Suggested filename:** `full-product-workflow.md`
**Suggested placement:** `/skills/workflows/`
**Dependencies:** Orchestrates 30+ component, interactive, and workflow skills across 9 phases
