---
name: idea-exploration
description: Guide users from a vague domain/background description to concrete, validated product ideas through structured brainstorming, landscape scanning, pain-point mining, and quick positioning tests.
type: workflow
theme: discovery-research
best_for:
  - "Exploring product ideas when you only have a domain or industry background"
  - "Brainstorming from scratch — no existing product, no hypothesis, just curiosity"
  - "Pivoting — abandoning old direction and searching for new opportunities"
scenarios:
  - "I work in enterprise SaaS and want to find a product idea worth pursuing"
  - "I'm interested in the construction industry but don't know what to build"
  - "Our startup needs to pivot — help me explore new directions"
  - "I have domain expertise in healthcare logistics but no specific product concept"
estimated_time: "60-120 min"
---


## Purpose

Guide users from **zero product idea** to **2-3 concrete, testable product concepts** through a structured exploration process. This workflow is for people who have domain knowledge, industry background, or personal experience but haven't yet crystallized a specific product idea.

Most PM frameworks assume you already have a hypothesis. This skill fills the gap *before* hypothesis formation — turning vague domain intuition into sharp product concepts ready for discovery validation.

## Key Concepts

### The Idea Exploration Funnel

```
  ┌───────────────────────────────┐
  │     Your Background &         │  ← You are here
  │     Domain Knowledge          │
  └───────────┬───────────────────┘
              ▼
  ┌───────────────────────────────┐
  │   Landscape & Trend Scan      │  Phase 1: What's happening?
  └───────────┬───────────────────┘
              ▼
  ┌───────────────────────────────┐
  │   Pain Point Mining           │  Phase 2: Who's hurting?
  └───────────┬───────────────────┘
              ▼
  ┌───────────────────────────────┐
  │   "How Might We" Generation   │  Phase 3: What if we...?
  └───────────┬───────────────────┘
              ▼
  ┌───────────────────────────────┐
  │   Idea Crystallization        │  Phase 4: Concrete concepts
  └───────────┬───────────────────┘
              ▼
  ┌───────────────────────────────┐
  │   Quick Positioning Test      │  Phase 5: Does it hold up?
  └───────────┬───────────────────┘
              ▼
  ┌───────────────────────────────┐
  │   2-3 Validated Ideas         │  → Feed into discovery-process
  └───────────────────────────────┘
```

### Why This Works
- **Diverge before converge:** Generates many possibilities before filtering
- **Grounded in reality:** Uses macro trends and real pain points, not daydreaming
- **Quick validation:** Tests ideas against Geoffrey Moore's positioning before investing weeks of discovery
- **Chains existing tools:** Leverages pestel-analysis, problem-framing-canvas, jobs-to-be-done, positioning-statement

### When to Use This
- You have domain expertise but no product idea
- You're exploring a new market/industry
- Your team is pivoting and needs fresh direction
- You're curious about a space and want to find opportunities

### When NOT to Use This
- You already have a clear product hypothesis (use `discovery-process` instead)
- You have an existing product and want to improve it (use `product-strategy-session`)
- You want to evaluate a specific feature (use `feature-investment-advisor`)

---

### Facilitation Source of Truth

When running this workflow as a guided conversation, use [`workshop-facilitation`](../workshop-facilitation/SKILL.md) as the interaction protocol.

It defines:
- session heads-up + entry mode (Guided, Context dump, Best guess)
- one-question turns with plain-language prompts
- progress labels (for example, Context Qx/8 and Scoring Qx/5)
- interruption handling and pause/resume behavior
- numbered recommendations at decision points
- quick-select numbered response options for regular questions (include `Other (specify)` when useful)

This file defines the workflow sequence and domain-specific outputs. If there is a conflict, follow this file's workflow logic.

## Application

This workflow orchestrates **5 phases** over **60-120 minutes** of guided conversation.

---

## Phase 1: Context Unpack — "Tell me about your world" (15-20 min)

**Goal:** Extract the user's domain knowledge, experience, frustrations, and observations to form the raw material for idea generation.

### Guided Questions (ask one at a time)

**Context Q1/8:** What's your professional background? What industry or domain do you know best?

**Context Q2/8:** In that domain, what do you see people struggling with every day? What makes you think "this is so broken"?

**Context Q3/8:** Have you personally experienced these frustrations? Tell me a specific story.

**Context Q4/8:** Who are the people dealing with these problems? (roles, titles, company types)

**Context Q5/8:** What tools or processes do they currently use to cope? What's the worst part about those?

**Context Q6/8:** Have you noticed any recent changes — new regulations, technology shifts, market moves — that are making things harder (or creating new opportunities)?

**Context Q7/8:** Are there adjacent industries or domains you've seen solve similar problems in interesting ways?

**Context Q8/8:** If you could wave a magic wand and fix ONE thing in this space, what would it be?

### Output: Domain Context Map

After collecting answers, synthesize into:

```markdown
## Domain Context Map

**Domain:** [Industry/space]
**Insider Knowledge:** [Key expertise the user brings]
**Observed Pain Themes:**
1. [Pain theme 1] — affects [who], caused by [what]
2. [Pain theme 2] — affects [who], caused by [what]
3. [Pain theme 3] — affects [who], caused by [what]

**Current Coping Mechanisms:** [What people do today]
**Macro Shifts:** [Trends, regulations, tech changes]
**Adjacent Inspiration:** [Solutions from other domains]
**Magic Wand Wish:** [The user's intuitive #1 fix]
```

Present this to the user for confirmation before proceeding.

---

## Phase 2: Landscape Scan — "What's the bigger picture?" (15-20 min)

**Goal:** Enrich the user's domain knowledge with macro trends, competitive landscape, and market dynamics.

### Activities

**1. Quick PESTEL Scan**
- **Use:** `skills/pestel-analysis/SKILL.md` concepts (don't run full PESTEL, extract key factors)
- Focus on the 2-3 most relevant dimensions for this domain
- Output: 3-5 macro factors creating pressure or opportunity

**2. Competitive Landscape Sketch**
- **Use:** `skills/company-research/SKILL.md` concepts
- Identify 3-5 existing solutions / competitors in the space
- For each: what they do, who they serve, what's missing
- Output: Competitive gap analysis

**3. Market Signal Check**
- Look for: growing complaints, regulatory changes, technology unlocks, demographic shifts
- Output: 2-3 "tailwinds" that could carry a new product

### Output: Opportunity Landscape

```markdown
## Opportunity Landscape

**Macro Tailwinds:**
1. [Tailwind 1] — creates opportunity because...
2. [Tailwind 2] — creates opportunity because...

**Competitive Gaps:**
1. [Competitor A] does X well but misses Y
2. [Competitor B] serves segment P but ignores segment Q
3. No one is doing Z yet

**Underserved Segments:**
1. [Segment] — why they're underserved
2. [Segment] — why they're underserved

**Technology Unlocks:**
- [New tech/capability] now makes it possible to...
```

---

## Phase 3: Pain Point Deep Dive — "Who's hurting the most?" (15-20 min)

**Goal:** Select the most promising pain-person combinations and drill deep.

### Activities

**1. Pain-Person Matrix**
Cross the top pain themes (Phase 1) with underserved segments (Phase 2):

| Pain \ Segment | Segment A | Segment B | Segment C |
|----------------|-----------|-----------|-----------|
| Pain 1         | ?         | ?         | ?         |
| Pain 2         | ?         | ?         | ?         |
| Pain 3         | ?         | ?         | ?         |

Rate each cell (🔴 intense / 🟡 moderate / ⚪ mild) based on:
- **Frequency:** How often does this pain hit this segment?
- **Intensity:** How much does it cost them (time, money, emotion)?
- **Willingness to pay:** Would they pay to solve this?

**2. Quick JTBD for Top 2-3 Cells**
- **Use:** `skills/jobs-to-be-done/SKILL.md` concepts
- For each promising pain-person pair, articulate:
  - **Functional job:** What are they trying to get done?
  - **Emotional job:** How do they want to feel?
  - **Social job:** How do they want to be perceived?

**3. "How Might We" Generation**
- **Use:** `skills/problem-framing-canvas/SKILL.md` concepts
- Transform each pain-person-JTBD into "How Might We..." questions
- Generate 3-5 HMW questions per pair
- Select the 3 most exciting HMW questions

### Output: Focused Opportunity Set

```markdown
## Top Opportunities

### Opportunity 1: [HMW question]
- **Who:** [Persona]
- **Pain:** [Specific pain]
- **Job:** [JTBD statement]
- **Why now:** [Tailwind/unlock]
- **Excitement rating:** ⭐⭐⭐⭐⭐

### Opportunity 2: [HMW question]
...

### Opportunity 3: [HMW question]
...
```

### Decision Point: Ask the user

> "Here are the top 3 opportunity areas. Which ones excite you most? Which feel like a 'hell yes'? Which feel 'meh'?"

Use the user's gut reaction as a signal — domain experts often have strong intuitions about what will work.

---

## Phase 4: Idea Crystallization — "What would the product actually be?" (15-20 min)

**Goal:** Transform the top 2-3 opportunities into concrete product concepts with enough detail to test.

### For each selected opportunity, define:

**1. One-liner:** What is it in one sentence? (e.g., "Slack for construction site teams")

**2. Value Proposition Draft:**
- **For** [target user]
- **Who** [has this problem]
- **Our product is** [category]
- **That** [key benefit]
- **Unlike** [current alternative]
- **We** [key differentiator]

**3. Solution Sketch:**
- What does the user DO with it? (3-5 key actions)
- What's the "aha moment"?
- What's the simplest possible version (MVP)?

**4. Quick Feasibility Check:**
- Technical complexity: Low / Medium / High
- Go-to-market path: How would you reach first 10 users?
- Revenue model hypothesis: How would it make money?

### Output: Product Concept Cards

```markdown
## Product Concept Card: [Name]

**One-liner:** [Sentence]

**For** [target] **who** [problem], **[Product]** is a [category]
**that** [benefit]. **Unlike** [alternative], **we** [differentiator].

**Key Actions:**
1. User does X → gets Y
2. User does A → gets B
3. User does C → gets D

**Aha Moment:** [The moment user realizes value]

**MVP Scope:** [Simplest version]

**Feasibility:** [Low/Med/High complexity]
**GTM:** [How to reach first 10 users]
**Revenue:** [How it makes money]
```

---

## Phase 5: Quick Positioning Test — "Does it hold up?" (10-15 min)

**Goal:** Stress-test each concept with positioning logic before investing in full discovery.

### For each concept, run the "5 Questions Test":

**Use:** `skills/positioning-statement/SKILL.md` concepts

| # | Question | Pass Criteria |
|---|----------|--------------|
| 1 | Can you name 5 real people who would use this? | If no → idea too vague |
| 2 | What would they Google to find you? | If nothing → no pull demand |
| 3 | Why would they switch from current solution? | If "slightly better" → not enough |
| 4 | Can you explain it to a stranger in <15 seconds? | If no → too complex |
| 5 | Why you? Why now? | If no moat → commoditizable |

### Scoring

Rate each concept:
- **5/5 pass:** Strong concept — ready for discovery validation
- **3-4/5 pass:** Promising — needs refinement on weak areas
- **1-2/5 pass:** Weak — rethink or merge with another concept
- **0/5 pass:** Kill — not worth pursuing

### Output: Final Ranking

```markdown
## Idea Exploration Results

### 🥇 Top Pick: [Concept Name]
- **Score:** X/5
- **Strongest signal:** [Why this one stands out]
- **Biggest risk:** [What needs validation first]
- **Next step:** Run `discovery-process` with hypothesis: "[If we build X for Y, then Z]"

### 🥈 Runner-up: [Concept Name]
- **Score:** X/5
- **Worth pursuing if:** [Condition]

### 🥉 Backup: [Concept Name]
- **Score:** X/5
- **Park for now because:** [Reason]
```

---

## What Happens Next?

After idea-exploration, you have concrete concepts ready for the standard PM workflow:

```
idea-exploration (you just did this)
       │
       ▼
discovery-process        ← Validate the problem hypothesis
       │
       ▼
product-strategy-session ← Full strategy if discovery validates
       │
       ▼
prd-development          ← Document requirements
       │
       ▼
roadmap-planning         ← Plan execution
```

**Recommended next prompt:**
```
请使用 discovery-process skill，验证以下假设：
"[From your top pick's hypothesis]"
目标用户：[From your concept card]
```

---

## Complete Workflow: End-to-End Summary

```
Phase 1: Context Unpack (15-20 min)
├─ 8 guided questions about domain/background
├─ Output: Domain Context Map
└─ Checkpoint: User confirms context is accurate

Phase 2: Landscape Scan (15-20 min)
├─ Quick PESTEL scan (key factors only)
├─ Competitive landscape sketch
├─ Market signal check
└─ Output: Opportunity Landscape

Phase 3: Pain Point Deep Dive (15-20 min)
├─ Pain-Person Matrix (rate intensity)
├─ Quick JTBD for top 2-3 pairs
├─ "How Might We" generation
├─ Output: Top 3 Opportunities
└─ Checkpoint: User picks favorites

Phase 4: Idea Crystallization (15-20 min)
├─ One-liner for each concept
├─ Value proposition draft (Geoffrey Moore format)
├─ Solution sketch (key actions, aha moment, MVP)
├─ Feasibility check (tech, GTM, revenue)
└─ Output: Product Concept Cards

Phase 5: Quick Positioning Test (10-15 min)
├─ 5 Questions Test per concept
├─ Score and rank
├─ Output: Final Ranking + Next Steps
└─ Handoff: Top pick → discovery-process
```

**Total Time:** 60-120 minutes

---

## Common Pitfalls

### Pitfall 1: Falling in Love with First Idea
**Symptom:** User latches onto the very first concept, skips exploration

**Fix:** Force divergence — require generating at least 3 HMW questions before converging

---

### Pitfall 2: Ideas Too Big
**Symptom:** "An AI platform that transforms all of healthcare"

**Fix:** Apply the "5 real people" test — if you can't name them, scope down

---

### Pitfall 3: Solution-First Thinking
**Symptom:** "I want to build an app that does X" (starts with solution, not problem)

**Fix:** Redirect to Phase 3 — "Who has this problem? How do you know?"

---

### Pitfall 4: Analysis Paralysis
**Symptom:** Endless landscape scanning, never generating ideas

**Fix:** Time-box Phase 2 to 20 minutes. Imperfect landscape > perfect analysis

---

### Pitfall 5: Ignoring Gut Feeling
**Symptom:** Picks concept with highest "rational" score, ignores the one that excites them

**Fix:** Founder excitement matters — energy and domain passion are competitive advantages

---

## References

### Related Skills (Used by This Workflow)

- `skills/pestel-analysis/SKILL.md` — Phase 2 macro scan
- `skills/company-research/SKILL.md` — Phase 2 competitive landscape
- `skills/problem-framing-canvas/SKILL.md` — Phase 3 HMW generation
- `skills/jobs-to-be-done/SKILL.md` — Phase 3 JTBD analysis
- `skills/positioning-statement/SKILL.md` — Phase 5 positioning test

### Downstream Skills (What Comes Next)
- `skills/discovery-process/SKILL.md` — Validate the winning idea
- `skills/product-strategy-session/SKILL.md` — Full strategy development
- `skills/prd-development/SKILL.md` — Document requirements

### External Frameworks
- Y Combinator — "Make something people want"
- Peter Thiel, *Zero to One* (2014) — "What important truth do very few people agree with you on?"
- Rob Fitzpatrick, *The Mom Test* (2013) — Validating ideas through customer conversations
- Ash Maurya, *Running Lean* (2012) — Problem-solution fit before product-market fit

---

**Skill type:** Workflow
**Suggested filename:** `idea-exploration.md`
**Suggested placement:** `/skills/workflows/`
**Dependencies:** Chains pestel-analysis, company-research, problem-framing-canvas, jobs-to-be-done, positioning-statement
