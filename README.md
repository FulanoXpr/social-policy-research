# Social Policy Research

Open-source skill pack for Claude Code, Desktop, and Cowork. Built for public policy research, social sciences, and community resilience planning.

## What This Is

A collection of Claude Code skills that turn Claude into a research assistant for policy work. No external API keys needed — install the skills and use them directly in Claude Code, Claude Desktop, or Cowork.

Built by [Foundation for Puerto Rico](https://foundationforpuertorico.org/) from real research workflows in community resilience planning, public policy analysis, and social science investigation.

## Skills

| Skill | Command | Status |
|-------|---------|--------|
| **Humanize** | `/humanize` | Available |
| **Stealth** | `/stealth` | Available |
| **Deep Research** | `/deepresearch` | Planned |
| **Literature Review** | `/lit-review` | Planned |
| **Policy Brief** | `/policy-brief` | Planned |
| **Scholia** | `/scholia` | Planned |
| **Compare** | `/compare` | Planned |
| **Verify** | `/verify` | Planned |
| **Ideate** | `/ideate` | Planned |
| **Watch** | `/watch` | Planned |

### Humanize

Removes AI writing patterns from text. Adapted for English and Spanish, with attention to policy and social science writing conventions. Based on Wikipedia's "Signs of AI writing" and adapted from [blader/humanizer](https://github.com/blader/humanizer).

### Stealth

Reduces AI detection scores by restructuring text for higher perplexity and burstiness. Does NOT change vocabulary — changes sentence length variation, paragraph structure, and predictability patterns. Based on [TempParaphraser (EMNLP 2025)](https://aclanthology.org/2025.emnlp-main.1607/) research. Use after `/humanize` for best results.

### Deep Research

Multi-step investigation: plan, search sources, synthesize, verify. Oriented to government data, social science literature, and public records rather than ArXiv/STEM.

### Literature Review

Synthesize academic and grey literature on a policy topic. Identifies consensus, disagreements, gaps, and methodological issues. Outputs a structured review with full citations.

### Policy Brief

Generate publication-ready policy briefs from research. Follows standard policy brief structure: executive summary, context, findings, options, recommendation.

### Scholia

Critical appraisal of documents before distribution. Evaluates logic, evidence quality, argument structure, and identifies gaps. Not style editing — substance review.

### Compare

Side-by-side comparison matrices. Compare policies, communities, data sources, or approaches across multiple dimensions.

### Verify

Citation and claim verification. Checks that URLs resolve, sources exist, quotes are accurate, and data claims match their cited sources.

### Ideate

Structured brainstorming sessions using divergent and convergent thinking strategies. For policy design, program planning, and strategic exploration.

### Watch

Recurring monitoring of sources: Federal Register, legislative databases, government data portals, academic preprint servers.

## Install

```bash
# Install all skills
curl -fsSL https://raw.githubusercontent.com/foundationforpuertorico/social-policy-research/main/install.sh | bash

# Or clone and install manually
git clone https://github.com/foundationforpuertorico/social-policy-research.git
cd social-policy-research
./install.sh
```

## Requirements

- Claude Code, Claude Desktop, or Claude Cowork
- No external API keys required

## Design Principles

1. **User control** — Every skill is interactive. It asks before proceeding, shows its work, and lets you redirect at each step.
2. **Provenance** — All outputs trace back to sources. No unsourced claims.
3. **Humanizer integrated** — Long outputs offer a humanization pass before delivery.
4. **Scholia as quality gate** — Documents meant for distribution get a critical review suggestion.
5. **Bilingual** — Works in English and Spanish. Responds in the language you use.
6. **No external dependencies** — Runs entirely within Claude. Optionally connects to MCP servers if available.

## Adapting for Your Organization

See [docs/customization.md](docs/customization.md) for guidance on adapting skills to your organization's templates, terminology, and workflows.

## Contributing

See [docs/CONTRIBUTING.md](docs/CONTRIBUTING.md).

## License

MIT

## Acknowledgments

- [blader/humanizer](https://github.com/blader/humanizer) — Foundation for the humanize skill
- [getcompanion-ai/feynman](https://github.com/getcompanion-ai/feynman) — Architectural inspiration for multi-agent research workflows
- [Orchestra-Research/AI-Research-SKILLs](https://github.com/Orchestra-Research/AI-Research-SKILLs) — Model for skill pack distribution
- [Wikipedia: Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) — Pattern reference for humanizer
