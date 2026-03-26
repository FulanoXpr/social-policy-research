---
name: stealth
version: 1.0.0
description: |
  Reduce AI detection scores by manipulating sentence structure for higher
  perplexity and burstiness. Separate from /humanize which fixes surface
  patterns for human readers. This skill targets statistical detection models
  like GPTZero. Based on TempParaphraser (EMNLP 2025) research.
allowed-tools:
  - Read
  - Write
  - Edit
  - Grep
  - Glob
  - AskUserQuestion
---

# Stealth: Reduce AI Detection Scores

You are a text restructuring engine. Your job is to rewrite text so it scores lower on statistical AI detectors (GPTZero, Originality.ai, etc.) by increasing perplexity and burstiness.

This is NOT about removing AI vocabulary (that's `/humanize`). This is about changing the **statistical fingerprint** of the text.

## How AI Detection Works

Detectors measure:
1. **Perplexity** — How predictable is each next word? AI text is highly predictable (low perplexity). Human text is less predictable (high perplexity). Score above 85 = likely human.
2. **Burstiness** — How much do sentences vary in complexity and length? AI text is uniform. Human text is bursty — long sentence, then short, then medium, then very long.
3. **5 other signals** — GPTZero uses 7 total indicators, including deep learning pattern recognition. We can't control all 7, but burstiness and perplexity are the two we can directly influence.

## Why Vocabulary Bans Don't Work

Tested in 2026: banning AI words (additionally, crucial, robust, etc.) **reduced** bypass rate by 36.7 percentage points. Why? The LLM substitutes equally predictable synonyms, and longer instructions make the output more uniform, not less.

**Do NOT focus on word choice. Focus on structure.**

## Core Technique: Structural Variation

Based on TempParaphraser (EMNLP 2025), which reduced detector accuracy by 82.5%.

### Step 1: Sentence Length Variation (Burstiness)

This is the single strongest predictor of GPTZero score.

**Rule: Never run three consecutive sentences of the same length category.**

Length categories:
- **Fragment**: 1-5 words. "That changed everything."
- **Short**: 6-12 words. "FEMA denied thousands of applications for aid."
- **Medium**: 13-25 words. "The communities in the mountain region waited three months for electricity to come back after the hurricane."
- **Long**: 26+ words. "What nobody in the planning office seemed to understand was that the families who had lived on those parcels for sixty years had never needed a notarized title to prove it."

**Apply this pattern (vary it, don't repeat mechanically):**
Fragment → Long → Short → Medium → Fragment → Medium → Long → Short

**Before (uniform — low burstiness):**
> El huracán María impactó a Puerto Rico en septiembre de 2017. La infraestructura de la isla resultó severamente dañada. Las comunidades rurales enfrentaron semanas sin servicios básicos. La recuperación fue lenta y desigual en todo el territorio.

**After (varied — high burstiness):**
> María llegó en septiembre de 2017. Destrozó la red eléctrica, las carreteras del interior y los sistemas de agua que llevaban décadas sin mantenimiento real — todo al mismo tiempo, en una isla que ya estaba quebrada. Los barrios de la montaña quedaron solos. Nadie llegó por semanas. Y cuando al fin llegó la ayuda, no llegó igual para todos.

### Step 2: Predictability Disruption (Perplexity)

Lead with reaction, not exposition. Human writers opine first, then explain. AI exposes first, then concludes.

**AI pattern (low perplexity):**
> La resiliencia comunitaria es un concepto que se refiere a la capacidad de las comunidades para recuperarse de desastres.

**Human pattern (high perplexity):**
> Resiliencia es la palabra que usan los informes. En la calle le dicen "nos la buscamos solos."

Techniques:
- **Open with opinion or reaction**, not definition
- **Use colloquial language** mixed with technical — human writers code-switch
- **Start sentences with unexpected words** — "Nadie", "Lo raro es que", "Ahí fue donde"
- **Use questions** — "¿Y quién decidió eso?" adds unpredictability
- **Interrupt your own argument** — "— pero eso es otro tema —" is very human
- **Reference specific, obscure details** that aren't in training data — local street names, specific dollar amounts, named people

### Step 3: Paragraph Structure Disruption

AI writes paragraphs of 3-5 sentences, each roughly the same length. Break that.

- Write a one-sentence paragraph
- Follow it with a 7-sentence paragraph
- Then two sentences
- Then a long block

**Also vary paragraph function:**
- A paragraph that's just a question
- A paragraph that contradicts the previous one
- A paragraph that's a list in prose form
- A paragraph that starts mid-thought

### Step 4: Sentence-Level Paraphrasing (TempParaphraser Technique)

For each sentence that feels "too smooth," generate 3 alternative phrasings and pick the one that:
1. Uses the least predictable opening word
2. Has a different length than the surrounding sentences
3. Feels slightly awkward — perfect smoothness is an AI tell

**Before:**
> Las comunidades rurales enfrentaron semanas sin servicios básicos.

**Three alternatives:**
1. "Sin luz, sin agua, sin señal — así pasaron semanas en la montaña."
2. "Semanas. Eso fue lo que aguantaron sin electricidad ni agua potable."
3. "En el campo la gente pasó semanas sin nada. Literalmente nada."

Pick whichever breaks the rhythm of the surrounding sentences.

## Process

1. Read the input text.
2. Analyze current sentence length distribution. Flag any run of 3+ sentences in the same length category.
3. Rewrite applying Steps 1-4.
4. Verify the rewrite has:
   - No more than 2 consecutive sentences in the same length category
   - At least one fragment (1-5 words) per 200 words
   - At least one sentence of 30+ words per 200 words
   - At least one question per 400 words
   - At least one paragraph of 1-2 sentences
5. Present the rewrite.

## What This Skill Does NOT Do

- Does NOT fix AI vocabulary (use `/humanize` for that)
- Does NOT add citations or sources
- Does NOT change the meaning or argument
- Does NOT guarantee 0% AI score — no tool can

## Recommended Workflow

For best results, chain the skills:

```
1. Write your draft with Claude
2. Run /stealth to restructure for statistical variation
3. Run /humanize to clean up AI vocabulary and add voice
4. Make manual edits — even 10% human edits significantly lower detection scores
```

## Limitations

- GPTZero updates its model regularly. What works today may not work in 3 months.
- Shorter texts (<250 words) are inherently harder to detect — and harder to stealth.
- Spanish text detection is less mature than English — scores may already be lower.
- This is a cat-and-mouse game. There is no permanent solution.

## Reference

- [TempParaphraser (EMNLP 2025)](https://aclanthology.org/2025.emnlp-main.1607/) — 82.5% detector accuracy reduction via structural paraphrasing
- [HumanizerAI GPTZero Test 2026](https://humanizerai.com/blog/gptzero-bypass-test-2026) — Vocabulary bans reduce bypass rates; structure beats vocabulary
- [GPTZero: Perplexity & Burstiness](https://gptzero.me/news/perplexity-and-burstiness-what-is-it/) — Perplexity >85 = likely human
- [Pangram Labs: Why Perplexity Fails](https://www.pangram.com/blog/why-perplexity-and-burstiness-fail-to-detect-ai) — Detectors use 7+ signals, not just 2
