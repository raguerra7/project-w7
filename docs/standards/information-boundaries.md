# Information Boundaries

Version: 1.0.0

Status: Draft

Owner: Rafael da Silva Guerra

---

# Purpose

This document defines the boundary between GitHub (official, shared documentation) and Obsidian / "Rafael OS" (personal knowledge management), and what may or may not cross that boundary.

---

# Context

Personal knowledge management tools are excellent at capturing half-formed thoughts quickly. That is exactly why they must never be mistaken for official documentation — a note optimized for one person's fast capture is not written with the care, review or long-term audience that official documentation requires. This boundary is stated explicitly so it is never resolved ad hoc, differently, by whoever happens to be unsure that day.

---

# The Boundary

| | GitHub | Obsidian ("Rafael OS") |
|---|---|---|
| Purpose | Official, shared source of truth | Personal knowledge management |
| Audience | Anyone with repository access | The founder alone |
| Authority | Binding — others can rely on it | None — it is a working draft by definition |
| Review | Follows the [Documentation Standard](documentation-standard.md) | None required |
| Lifespan | Permanent, versioned, kept even when superseded | Disposable; may be deleted, rewritten, abandoned freely |

Obsidian never replaces GitHub, regardless of how complete a note in it becomes. The moment a note is stable and useful enough that someone else could reasonably act on it, it graduates: it is rewritten to meet the Documentation Standard and committed to the appropriate repository. Until that happens, it does not exist as far as W7's official record is concerned.

---

# What Never Leaves Obsidian As-Is

- Unfiled personal reflections, including the working material behind [Founder](../founder/README.md) documents before they are deliberately written up.
- Draft reasoning that has not yet been checked against the [Decision Framework](../framework/decision-framework.md).
- Anything containing information that should not be public, per the classification below, regardless of whether the target repository is private — private today does not guarantee private later.

---

# Sensitivity Classification

Every piece of information handled within W7 falls into one of three classes:

| Class | Examples | Where it may live |
|---|---|---|
| Public | Foundations, standards, published initiative content | Public GitHub repositories |
| Internal | Roadmap detail, unreleased product plans, draft ADRs | Private GitHub repositories |
| Private | Credentials, personal reflections, unresolved disagreements, anything about a specific person without their consent | Never committed to Git, in any repository, public or private |

Credentials and secrets are Private by definition and are governed by the [Engineering Standard](engineering-standard.md)'s rule that they never enter version control — a private repository is not an acceptable place for a secret either, because visibility can change and history is hard to fully purge.

---

# AI Tools and This Boundary

AI tools assisting with W7 work should be given Public and Internal-class information freely, per the [AI Usage Standard](ai-usage-standard.md). Private-class information is not pasted into AI tool contexts, prompts, or generated documentation, regardless of how convenient it would be for a specific task.

---

# Related Documents

- [Knowledge Architecture](../architecture/knowledge-architecture.md) — the two-repository model this boundary defines in detail
- [AI Usage Standard](ai-usage-standard.md) — how this boundary applies to AI-assisted work
- [Documentation Standard](documentation-standard.md) — the bar a note must clear to graduate from Obsidian to GitHub
- [Engineering Standard](engineering-standard.md) — the rule that secrets never enter version control
