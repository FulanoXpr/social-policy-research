# Strategy Reference — Detailed Methodology

Read the relevant sections before executing a strategy during an ideation session.
Each strategy includes: what it is, when to use it, the process, and prompt patterns.

---

## 1. Random Search (Divergent)

Generate a large quantity of ideas without filtering. Prioritize volume over quality.

**When to use:** The user is stuck or has zero starting ideas.

**Process:**
1. Ask the user for the problem in one sentence
2. Generate 10-15 wildly different approaches — include impractical, absurd, and
   conventional ideas without filtering
3. Present them as seeds, then ask the user which directions resonate

**Prompt pattern:** "Generate 15 wildly different approaches to [problem]. Don't filter
for feasibility — include impractical or absurd ideas too."

**Why it works:** Quantity breeds quality. Research shows later ideas in a brainstorming
session tend to be more original than early ones (Osborn, 1953; Paulus & Yang, 2000).

---

## 2. Unconventional Roles (Divergent)

Adopt a perspective the user would not normally consider.

**When to use:** The user is locked into one viewpoint or domain.

**Process:**
1. Select 3-4 roles that are maximally distant from the user's domain
2. For each role, generate 2-3 ideas from that perspective
3. Ask the user which perspective shifts feel most productive

**Prompt pattern:** "How would a [marine biologist / stand-up comedian / 10-year-old /
17th-century architect / emergency room nurse] approach this problem?"

**Why it works:** Perspective shifting activates remote associations — the mechanism
behind creative insight (de Bono, 1970; Ward, 1994).

---

## 3. Constraint Manipulation (Divergent)

Systematically add, remove, or invert constraints to reshape the problem.

**When to use:** The user feels constrained or solutions feel stale.

**Process:**
1. List the current constraints (budget, time, technology, people, regulations)
2. For each constraint, ask three questions:
   - What if this constraint didn't exist?
   - What if this constraint were 10x more severe?
   - What if this constraint were inverted?
3. Follow the most interesting pathways

**Prompt pattern:** "What if budget were unlimited? What if this had to work in 24 hours?
What if we removed [key assumption]?"

**Why it works:** Constraints are both the enemy and engine of creativity. Changing them
reveals hidden solution spaces (Stokes, 2005).

---

## 4. Analogy Bridge (Divergent)

Use analogies from distant domains to generate transfer solutions. This strategy
includes cross-pollination: systematically borrowing mechanisms from successful models
in other fields, industries, or geographies.

**When to use:** The problem has known solutions in other fields, or the user needs
fresh perspectives from outside their domain.

**Process:**
1. Identify the core mechanism of the user's challenge (not the surface features)
2. Find 2-3 domains where a structurally similar challenge has been solved
3. Extract the principle that makes each solution work
4. Transplant the principle (not the surface features) to the user's context
5. Adapt for the user's specific constraints and culture
6. Ask: "What would make this work even BETTER in your context than in its origin?"

**Prompt patterns:**
- "What parallels exist between [user's problem] and [distant domain]?"
- "What can [user's field] learn from how [other field] solved [analogous problem]?"
- "If [user's organization] were a [restaurant / hospital / video game studio],
  how would it approach this?"

**Why it works:** Cross-domain transfer is a hallmark of creative cognition. LLMs are
particularly strong here due to their breadth of training data (Gick & Holyoak, 1980).

---

## 5. SCAMPER (Divergent)

Systematically transform an existing idea using seven operators: Substitute, Combine,
Adapt, Modify/Magnify, Put to other uses, Eliminate, Reverse/Rearrange.

**When to use:** There is an existing idea, product, process, or program to improve.

**Process:**
1. Select the target: a product, process, service, program, or relationship
2. Run through ALL 7 SCAMPER lenses (don't cherry-pick):
   - **S**ubstitute: What if we replaced X with Y?
   - **C**ombine: What if we merged two things?
   - **A**dapt: What works elsewhere that we can borrow?
   - **M**odify/Magnify: What if we 10x'd something?
   - **P**ut to other uses: What else could this be used for?
   - **E**liminate: What if we removed this entirely?
   - **R**everse: What if we flipped the model?
3. Generate at least one idea per lens — even if it feels absurd
4. The absurd ones often contain the seed of something brilliant

**Why it works:** Provides systematic structure that prevents fixation on the original
concept (Eberle, 1996).

---

## 6. Lateral Thinking (Divergent)

Edward de Bono's techniques for breaking out of logical/linear thinking patterns.

**When to use:** The user needs to break habitual thinking patterns, or conventional
problem-solving has hit a wall.

**Techniques:**

### Random Entry
1. Pick a random word, object, or domain completely unrelated to the challenge
2. Force connections between the random element and the challenge
3. Follow the unexpected pathways that emerge

### Reversal
Take the core assumption and flip it 180°:
- Instead of "we serve customers" → "customers serve us"
- Instead of "we plan for failure" → "we design for abundance"
- Instead of "experts lead" → "novices lead"

### Provocation (Po)
State something deliberately impossible or absurd, then extract useful ideas:
- "Po: The product builds itself" → leads to: self-service assembly, user co-creation
- "Po: We have zero budget" → leads to: barter systems, community contributions, sweat equity

### Six Thinking Hats (Simplified)
Rapidly cycle through perspectives:
- White: Pure data — what do the facts tell us?
- Red: Gut feeling — what excites or scares people?
- Black: Critical — what could go wrong?
- Yellow: Optimistic — best possible outcome?
- Green: Creative — wildest possibility?
- Blue: Process — how do we decide and move forward?

**Why it works:** Lateral thinking bypasses the brain's preference for established
patterns and forces novel neural pathways (de Bono, 1967).

---

## 7. Backcasting (Divergent)

Start from a vivid, desirable future and work backward to identify the steps needed
to get there. The opposite of forecasting (which extrapolates from the present).

**When to use:** The challenge is long-term and strategic, a compelling future vision
exists (or can be articulated), or the user wants to identify what to start NOW.

**Process:**
1. Define a bold vision statement for a specific time horizon (e.g., 10-15 years out)
   - Be concrete: "By [year], [specific measurable outcome]" — not vague aspirations
2. Identify 3-5 conditions that MUST be true for that vision to exist
3. For each condition, work backward in increments:
   - [Year - 5]: What infrastructure/policies/capabilities must exist?
   - [Year - 10]: What pilots/partnerships/investments must be underway?
   - Now: What must we initiate RIGHT NOW?
4. The "right now" actions become the ideas

**Prompt pattern:** "Imagine it's [future year] and [vision] is reality. What had to
happen in [intermediate year]? What had to start NOW?"

**Why it works:** Frees thinking from present constraints by anchoring to a desired
endpoint rather than incremental improvement (Robinson, 1990; Dreborg, 1996).

---

## 8. Prefabrication (Convergent)

Start from known solutions or templates and adapt them to the current context.

**When to use:** The user needs practical, implementable ideas quickly, or wants
to avoid reinventing the wheel.

**Process:**
1. Identify 3-5 existing solutions to similar problems (in any domain)
2. For each, identify what makes it work and what would need to change
3. Adapt each to the user's specific constraints and context
4. Present as "proven models, locally adapted"

**Prompt pattern:** "What existing solutions for [similar problem] could be adapted
here? How would each need to change?"

**Why it works:** Not all creativity requires novelty from scratch. Creative adaptation
is a valid and efficient form of innovation (Ward, 1994).

---

## 9. Evaluation Matrix (Convergent)

Apply structured criteria to rank and filter existing ideas.

**When to use:** The user has multiple ideas and needs to prioritize.

**Process:**
1. Define 3-5 evaluation criteria with the user (e.g., feasibility, impact, novelty,
   alignment with goals, resource requirements)
2. Rate each idea on each criterion using a 1-5 scale
3. Weight the criteria based on what matters most to the user
4. Identify top scorers and interesting outliers (high novelty but low feasibility
   ideas may be worth revisiting)

**Prompt pattern:** "Rate each idea on [criteria] using 1-5. Which combinations
score highest? Which outliers are worth a second look?"

**Important:** The user should do the scoring, not Claude. LLM self-evaluation of
creative output is unreliable (Si et al., 2024). Claude can facilitate the process
and present the matrix, but the user assigns the scores.

**Why it works:** Convergence requires explicit criteria. Without them, people default
to familiarity bias (Rietzschel et al., 2010).

---

## 10. Collision Mapping (Convergent)

Identify unexpected combinations of ideas from different strategies or ambition
levels that could create something greater than the sum of their parts.

**When to use:** After generating ideas from multiple strategies; when seeking
synergies and emergent possibilities.

**Process:**
1. Lay out all generated ideas visually or in a list
2. Look for 2-3 unexpected collisions — pairings from different strategies,
   different ambition levels, or different domains
3. For each collision, articulate what the combination produces that neither
   idea alone could achieve
4. Present collisions as the "where the real magic happens" moment

**Prompt pattern:** "What happens if we combine [idea from Strategy A] with
[idea from Strategy B]? What emerges that neither could do alone?"

**Why it works:** Innovation often happens at intersections. The most valuable
ideas frequently emerge from recombining existing concepts in novel ways
(Hargadon & Sutton, 1997; Arthur, 2009).

---

## 11. Flipped Interaction (Hybrid)

Instead of Claude generating ideas, Claude asks the user probing questions to
surface their own latent ideas.

**When to use:** The user likely has intuitions they haven't articulated, or when
preserving human agency is particularly important.

**Process:**
1. Ask 3-5 probing questions, one at a time:
   - "What's the one thing you wish you could do but think is impossible?"
   - "What would you try if failure had no consequences?"
   - "What's the obvious answer everyone's ignoring?"
   - "What would a competitor do that would terrify you?"
   - "If you had to explain this challenge to a child, what would you say?"
2. Build on each answer — reflect back what you hear and push deeper
3. Connect the user's own ideas to form a coherent direction

**Why it works:** Coach-like LLM interaction (guidance over answers) produces better
long-term creative outcomes (Kumar et al., 2025).

---

## 12. Chain-of-Thought Ideation (Hybrid)

Break a complex creative challenge into sequential reasoning steps, generating
ideas at each stage.

**When to use:** The problem is multifaceted and a single brainstorm won't capture
its complexity.

**Process:**
1. Decompose the challenge: "What are the 3-5 sub-problems here?"
2. For each sub-problem, generate 2-3 approaches
3. Look for combinations across sub-problems: "Which approaches for sub-problem A
   pair well with which approaches for sub-problem B?"
4. Synthesize the most interesting cross-combinations into coherent whole solutions

**Note:** Use this strategy selectively for genuinely complex, multi-part problems.
Research shows chain-of-thought prompting provides limited value for simpler tasks
(Meincke et al., 2025).

**Why it works:** Decomposition prevents cognitive overload and ensures coverage of
the full problem space (Newell & Simon, 1972).
