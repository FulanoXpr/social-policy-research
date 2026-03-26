# Evidence Base for Ideation GPS Skill

This file summarizes the research evidence supporting the GPS framework and its adaptation
for conversational AI brainstorming. Read this file only when the user asks for the scientific
basis of the approach or wants to understand why a particular technique is recommended.

## 1. The GPS Framework (Chang & Li, 2025)

**Source**: Chang, H-F. & Li, T. (2025). A Framework for Collaborating a Large Language Model
Tool in Brainstorming for Triggering Creative Thoughts. *Thinking Skills and Creativity*, 56,
101755. DOI: 10.1016/j.tsc.2025.101755

**Key findings**:
- Proposed the Goal-Prompt-Strategy framework for structured LLM brainstorming.
- Tested with ChatGPT 3.5 using prompts with and without the framework (P0-P7).
- All four TTCT creativity dimensions improved with GPS: fluency, flexibility, originality,
  and elaboration.
- Nine strategies mapped to divergent and convergent brainstorming phases.
- Adapted Torrance Tests of Creative Thinking for evaluating AI-generated creative output.

## 2. LLM Assistance and Human Creativity (Kumar et al., 2025)

**Source**: Kumar, H. et al. (2025). Human Creativity in the Age of LLMs: Randomized
Experiments on Divergent and Convergent Thinking. *CHI 2025*. arXiv: 2410.03703

**Key findings**:
- Two parallel experiments, 1,100 participants total.
- Compared: standard LLM (direct answers), coach-like LLM (guidance), and no AI.
- LLM assistance boosts creativity during assisted tasks.
- However, it may hinder independent creative performance afterward.
- The homogenization effect persists even after participants stopped using the LLM.
- Coach-like interaction preserves human agency better than direct-answer mode.
- Implication: The skill should default to coaching mode, asking questions and seeding ideas
  rather than generating complete solutions.

## 3. AI Ideas and Collective Creativity (Ashkinaze et al., 2025)

**Source**: Ashkinaze, J. et al. (2025). How AI Ideas Affect the Creativity, Diversity, and
Evolution of Human Ideas. *Collective Intelligence Conference 2025*. arXiv: 2401.13481

**Key findings**:
- Dynamic experiment: 800+ participants, 40+ countries.
- High AI exposure did not affect individual idea creativity.
- High AI exposure increased collective idea diversity and rate of change.
- "AI made ideas different, not better."
- No main effects of disclosing that ideas came from AI.
- Self-reported creative people were less influenced by knowing an idea was from AI.
- Participants may knowingly adopt AI ideas when the task is difficult.
- Implication: LLM ideas work best as diversity injectors in group brainstorming, not as
  quality boosters for individuals.

## 4. Divergent Creativity Benchmarks (Bellemare-Pepin et al., 2026)

**Source**: Bellemare-Pepin, A. et al. (2026). Divergent Creativity in Humans and Large
Language Models. *Nature Scientific Reports*. DOI: 10.1038/s41598-025-25157-3

**Key findings**:
- Compared LLMs against 100,000 humans on the Divergent Association Task (DAT).
- Leading LLMs exceed the average human score on divergent thinking.
- However, the most creative humans (top decile) still outperform all LLMs tested.
- A persistent gap exists between artificial and human divergent thinking at the highest levels.
- A meta-analysis of 106 studies found human-AI collaboration often underperforms the best
  of either alone, but shows advantages in content creation tasks.
- Implication: LLMs are best positioned as creative partners for average-creativity users,
  not as replacements for highly creative individuals.

## 5. Who Benefits Most from LLM Brainstorming (Memmert et al., 2024)

**Source**: Memmert, L. et al. (2024). Brainstorming with a Generative Language Model:
The Role of Creative Ability and Tool-Support for Brainstorming Performance. *ResearchGate*.

**Key findings**:
- Experiment with GPT-4-based brainstorming app, 58 participants.
- Low-creativity participants showed increased fluency with LLM support.
- Originality improved for both high- and low-creativity groups.
- Concerns remain about whether humans reduce effort when working with LLMs (social
  loafing effect in human-AI dyads).
- Implication: The skill should be especially attentive to maintaining user engagement and
  effort, not allowing the LLM to do all the creative work.

## 6. LLM Collective Creativity Equivalence (ScienceDirect, 2025)

**Source**: Large Language Models Show Both Individual and Collective Creativity Comparable
to Humans. *Thinking Skills and Creativity*, 2025. DOI: 10.1016/j.tsc.2025...

**Key findings**:
- Multi-faceted creativity measurement across divergent thinking, problem solving, and
  creative writing.
- When asked 10 times, one LLM is equivalent to a nominal group of 8-10 humans.
- Roughly two additional LLM responses equal one extra human in incremental improvement.
- Cost-effectiveness makes LLMs viable for organizations where brainstorming sessions
  typically involve fewer than 10 people.
- Implication: For volume-based ideation, running multiple LLM queries is a valid approach.

## 7. Human-AI Co-Creativity (Medeiros, 2025)

**Source**: Medeiros. (2025). Human-AI Co-Creativity: Does ChatGPT Make Us More Creative?
*The Journal of Creative Behavior*. DOI: 10.1002/jocb.70022

**Key findings**:
- Writers with lower creative potential benefited most from generative AI assistance.
- Their output quality rose to match higher-creativity writers.
- However, greater AI use risks overall homogenization of collective output.
- Expert human judges could reliably distinguish AI-written creative work from human work.
- AI creative writing was comparable only to amateur human writers.
- Implication: AI augments the floor of creativity but does not raise the ceiling.

## 8. Chain-of-Thought Effectiveness (Wharton, 2025)

**Source**: Meincke, L. et al. (2025). Prompting Science Report 2: The Decreasing Value
of Chain of Thought in Prompting. *Wharton Generative AI Labs*. SSRN: 5285532

**Key findings**:
- CoT effectiveness varies significantly by model type and task.
- Non-reasoning models: modest average improvements but increased variability.
- Reasoning models: minimal benefits despite 20-80% increase in response time.
- Generic CoT prompts provide limited value compared to models' built-in reasoning.
- Implication: For ideation, structured decomposition (Strategy 9: Chain-of-Thought Ideation)
  should be used selectively for complex multi-part problems, not as a default technique.

## 9. Novel Research Ideation (Si et al., 2024)

**Source**: Si, C. et al. (2024). Can LLMs Generate Novel Research Ideas? *ICLR 2025*.
OpenReview: M23dTGWCZy

**Key findings**:
- 100+ NLP researchers compared against an LLM ideation agent.
- LLM-generated ideas judged as more novel (p < 0.05) than human expert ideas.
- LLM ideas judged slightly weaker on feasibility.
- LLM self-evaluation of ideas was unreliable.
- LLMs showed lack of diversity in generation (homogenization within a single session).
- Implication: LLMs are strong at novelty but weak at self-assessment. The user must be
  the evaluator, not the LLM. The skill should explicitly avoid self-rating its own ideas.

## Design Principles Derived from Evidence

1. **Coach over Oracle**: Guide the user's thinking rather than supplying finished ideas.
2. **Diversity over Quality**: LLMs excel at making ideas different, not necessarily better.
3. **Volume then Filter**: Generate many ideas first (diverge), evaluate later (converge).
4. **Human as Evaluator**: Never let the LLM judge its own creative output.
5. **Preserve Agency**: The user should feel ownership over the final ideas.
6. **Equity Multiplier**: LLMs benefit lower-creativity users more — the skill democratizes
   creative capacity across varying skill levels.
7. **Beware Homogenization**: Without deliberate strategies, LLM use narrows collective
   diversity. Use multiple strategies and perspectives to counteract this.
