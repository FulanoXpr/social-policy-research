---
name: compare
version: 1.0.0
description: |
  Side-by-side comparison matrices for policies, communities, programs,
  data sources, or approaches. Produces structured tables with sourced
  evidence. Triggers on: "compare", "comparison", "side by side",
  "how do these differ", "which is better", "compara", "comparación",
  "diferencias entre", "cuál es mejor", "matriz comparativa".
allowed-tools:
  - Read
  - Write
  - Edit
  - Grep
  - Glob
  - AskUserQuestion
  - WebSearch
  - WebFetch
---

# Compare — Structured Comparison Matrices

Build side-by-side comparison matrices for policy analysis, community benchmarking, program evaluation, and research design. Produces structured tables with sourced evidence and a clear synthesis.

## When to Use

- Comparing policies, laws, or regulations across jurisdictions
- Benchmarking communities, municipalities, or regions
- Evaluating program models or intervention approaches
- Comparing data sources, methodologies, or frameworks
- Assessing vendor proposals, tools, or platforms
- Contrasting theoretical perspectives or research findings

## Process

### Step 1: Define the Comparison

Ask the user (or infer from context):

1. **What are you comparing?** (2-6 items. More than 6 becomes unreadable.)
2. **What dimensions matter?** (cost, timeline, population served, evidence base, etc.)
3. **What's the decision?** (choosing one, understanding tradeoffs, or mapping the landscape?)

If the user says "compare X and Y" without specifying dimensions, propose 5-7 relevant dimensions and ask which matter most.

### Step 2: Research Each Item

For each item being compared:
- Gather facts on every dimension
- Note the source for each data point
- Flag where data is missing or uncertain
- Distinguish hard data from estimates or expert opinion

**Be honest about gaps.** A cell that says "No data found" is more useful than a fabricated answer.

### Step 3: Build the Matrix

Produce a markdown table with:
- Items as columns
- Dimensions as rows
- Sources cited inline or as footnotes
- Color-coding via text labels: **Strength**, **Weakness**, **Neutral**, **Unknown**

### Step 4: Synthesize

After the matrix, provide:
1. **Key differentiators** — The 2-3 dimensions where the items diverge most
2. **Surprising similarities** — Where items are unexpectedly alike
3. **Gaps and caveats** — What couldn't be compared and why
4. **Recommendation** (only if the user asked for one)

---

## Output Format

```markdown
## Comparison: [Item A] vs [Item B] vs [Item C]

**Purpose:** [what decision or understanding this comparison supports]
**Date:** [date]

| Dimension | Item A | Item B | Item C |
|-----------|--------|--------|--------|
| [dim 1] | [data + source] | [data + source] | [data + source] |
| [dim 2] | [data] | [data] | [data] |
| ... | ... | ... | ... |

### Key Differentiators
- [biggest difference and why it matters]
- [second biggest]

### Surprising Similarities
- [what you didn't expect to be the same]

### Gaps and Caveats
- [what's missing, uncertain, or not directly comparable]

### Sources
1. [source 1]
2. [source 2]
```

---

## Comparison Templates by Domain

### Policy Comparison

Suggested dimensions:
- Jurisdiction / scope
- Year enacted / last amended
- Population affected
- Funding mechanism
- Enforcement mechanism
- Measurable outcomes (if evaluated)
- Political feasibility
- Equity considerations

### Community Benchmarking

Suggested dimensions:
- Population / demographics
- Geographic context (urban/rural/coastal/mountain)
- Key vulnerabilities
- Existing assets / infrastructure
- Organizational capacity
- Prior disaster experience
- Federal/state funding received
- Recovery timeline

### Program Model Comparison

Suggested dimensions:
- Theory of change
- Target population
- Delivery mechanism
- Cost per beneficiary
- Evidence base (RCT / quasi-experimental / case study / none)
- Scalability
- Cultural adaptability
- Known limitations

### Data Source Comparison

Suggested dimensions:
- Coverage (geographic, temporal, demographic)
- Granularity (individual / household / block group / tract / municipality)
- Update frequency
- Access method (API / download / request)
- Cost
- Known biases or limitations
- Interoperability with other sources

---

## Behavioral Guidelines

1. **Apples to apples.** Ensure dimensions are measured the same way across items. If one source reports per-capita and another reports totals, normalize before comparing.
2. **Source everything.** Every data point needs a source. Unsourced comparisons are opinions, not analysis.
3. **Flag incomparables.** Some things look comparable but aren't. Different definitions, different time periods, different methodologies. Call it out.
4. **Don't force a winner.** Unless the user asks "which is better," present the tradeoffs and let them decide. Policy choices involve values, not just data.
5. **Keep it scannable.** The matrix should be readable in 2 minutes. Put nuance in the synthesis, not the cells.

## Connection to Other Skills

- Use `/deepresearch` first if you need to gather information before comparing
- Use `/scholia` to critically appraise a comparison before distributing it
- Use `/ideate` when comparison reveals a gap that no existing option fills
