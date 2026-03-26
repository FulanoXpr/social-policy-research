---
name: scholia
version: 1.0.0
description: |
  Critical appraisal of documents before distribution. Evaluates logic,
  evidence quality, argument structure, and identifies gaps. Not style
  editing — substance review. Use when someone asks to review a draft,
  appraise an argument, or check if a document is ready to share.
  Works in English and Spanish. Triggers on: "review this document",
  "is this argument solid", "what's missing", "is it ready to share",
  "critical review", "revisa este documento", "¿se sostiene?",
  "¿está listo?", "scholia review".
allowed-tools:
  - Read
  - Write
  - Edit
  - Grep
  - Glob
  - AskUserQuestion
---

# Scholia — Critical Appraisal of Documents

Inspired by the scholia tradition — not summaries, but interrogation. Your job is to strengthen the argument before the document leaves the organization.

**Appraise, don't summarize.** The user already knows what their document says. They need to know if it holds up.

## Relationship to Other Skills

Three skills, sequential:

1. **Scholia (this skill)** — *Is the argument sound?* Logic, evidence, structure. Run **first**.
2. **Stealth** (`/stealth`) — *Will it pass AI detection?* Statistical restructuring. Run **second** if needed.
3. **Humanize** (`/humanize`) — *Does it sound human?* Vocabulary, tone, voice. Run **third**.

Editorial polish before scholia is form over a flawed argument.

---

## The Three Pillars: SIFT → SCRUTINIZE → SYNTHESIZE

### 1. SIFT — Structural Analysis

Identify what the document is actually saying:
- What is the central argument or claim?
- What is the document's purpose and intended audience?
- Is the structure (intro → evidence → conclusions → recommendations) coherent?
- Does each section contribute to the central argument, or are there orphaned sections?

### 2. SCRUTINIZE — Critical Interrogation

Challenge the document's logic and evidence:

- **Unsupported claims:** What is asserted without evidence or citation?
- **Logical gaps:** Where does the argument jump without justification?
- **Overstatement:** Do the conclusions go beyond what the data or evidence support?
- **Internal contradictions:** Does any section undermine another?
- **Missing counterarguments:** What objection does the document fail to anticipate?
- **Data integrity:** Are numbers, dates, and sources verifiable? Do they add up?
- **Audience-specific scrutiny** (see lenses below)

### 3. SYNTHESIZE — Revision Priorities

Produce actionable guidance:
- What are the 3–5 most important issues to address before distributing?
- Rank by impact on the document's credibility and effectiveness
- Note what is already working well and should be preserved

---

## Audience Scrutiny Lenses

Ask the user who will read the document. If they don't know, infer from the content. Apply the matching lens during SCRUTINIZE.

### Executive / Board
- Is the strategic implication clear? Would a busy executive need to ask "so what?"
- Is the argument crisp enough for 5-minute reading?
- Are recommendations concrete enough to act on?

### Federal Funder (HUD, FEMA, EDA, SBA, USDA, EPA, etc.)
- Is every claim traceable to documented program outcomes?
- Are compliance requirements and grant language reflected accurately?
- Does the document anticipate audit-level scrutiny?
- Are expenditures, timelines, and deliverables specific and verifiable?

### Private Funder / Foundation
- Is the theory of change explicit?
- Does the impact narrative match the evidence presented?
- What would a skeptical program officer push back on?
- Are outcomes distinguished from outputs?

### Government Partner (state/municipal agency)
- Are interagency commitments and responsibilities clearly delineated?
- Does the document avoid overpromising?
- Is the political/institutional context acknowledged where relevant?

### Community / Public
- Is technical language accessible or does it assume expertise?
- Are community voices or data represented, not just institutional perspectives?
- Would a community member recognize their reality in this document?

### Academic / Peer Review
- Is the methodology transparent and replicable?
- Are limitations acknowledged?
- Is the literature review adequate?
- Are causal claims distinguished from correlations?

### Media / Press
- Are the key findings quotable?
- Is there a clear narrative through-line?
- Are any claims likely to be challenged publicly?

---

## Output Format — The Scholium

Produce in the language of the document being reviewed.

```
## SCHOLIUM
**Document:** [document name]
**Intended audience:** [identified or inferred]
**Review date:** [date]

---

### SIFT — Central Argument
[1–3 sentences: what the document says and whether it succeeds]

---

### SCRUTINIZE — Critical Findings

**Unsupported claims:**
- [concise list]

**Logical gaps:**
- [concise list]

**Overstatement:**
- [concise list]

**Internal contradictions:**
- [concise list, or "None identified"]

**Arguments the reader will raise:**
- [what a skeptical reader would ask]

---

### AI WRITING SIGNALS (if detected)

| Pattern | Severity | Example |
|---------|----------|---------|
| [humanizer pattern] | HIGH/MED/LOW | [brief quote from document] |

**Recommended next step:** Run `/stealth` then `/humanize` before distribution.
*(Omit this section if no significant patterns detected.)*

---

### SYNTHESIZE — Revision Priorities

1. [Most urgent — impact on credibility/effectiveness]
2. [Second priority]
3. [Third priority]
4. [Optional]
5. [Optional]

**What works and should be preserved:**
- [concrete strengths of the current document]

**Go / No-Go:** [Ready to distribute | Needs revision | Needs major rework]
```

---

## Appraisal Shortcuts

Quick commands the user can invoke:

| Shortcut | What it does |
|----------|-------------|
| "Is the argument solid?" / "¿Se sostiene?" | Full SIFT → SCRUTINIZE → SYNTHESIZE |
| "Overstatement?" / "¿Sobreafirmaciones?" | Do conclusions go beyond what data supports? |
| "What's missing?" / "¿Qué le falta?" | Content gaps and undeveloped arguments |
| "What would a funder ask?" / "¿Qué preguntaría un funder?" | Skeptical program officer lens |
| "Contradictions?" / "¿Contradicciones?" | Internal coherence review |
| "Is it ready?" / "¿Está listo?" | Full evaluation with go/no-go recommendation |
| "Sounds like AI?" / "¿Suena a AI?" | AI writing pattern scan (references `/humanize` patterns) |

---

## Workflow

1. **Receive the document** — DOCX uploaded, text pasted, or file path provided
2. **Identify the audience** — ask the user if not clear from context
3. **SIFT** — read the full document before starting scrutiny
4. **SCRUTINIZE** — with the appropriate audience lens
5. **AI writing scan** — while reading, note AI writing patterns (em dashes, negative parallelisms, promotional language, rule of three, copula avoidance, superficial -ing phrases, generic positive conclusions). Do not invoke `/humanize` — just identify and report.
6. **Produce the Scholium** — in the structured format above
7. **Recommend next step** — if AI signals detected, recommend `/stealth` then `/humanize`. If none, recommend direct to editorial/distribution.

---

## Principles

- **Appraise, don't summarize.** The user knows what their document says. Tell them if it holds up.
- **Grounded in the source.** Every finding must reference a specific section or claim in the document. Don't invent friction.
- **Actionable.** Every observation must translate to a concrete revision action.
- **Preserve what works.** The Scholium is not only criticism — it also recognizes strengths.
- **Honest go/no-go.** If the document isn't ready, say so directly. If it is, say that too.
- **Language matches document.** Review a Spanish document in Spanish. English in English.
