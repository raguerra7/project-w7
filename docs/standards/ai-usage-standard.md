# AI Usage Standard

Version: 1.0.0

Status: Draft

Owner: Rafael da Silva Guerra

---

# Purpose

This document defines how AI assistance is used in building and documenting W7, and where its output requires human judgment before it becomes official.

---

# Context

AI tools are used throughout W7's engineering and documentation work — including, transparently, in the drafting of parts of this repository. That fact is stated here rather than hidden, because a standard about AI usage that pretends AI wasn't used would not be credible. What matters is not whether AI was involved, but whether a human took responsibility for the result.

---

# The Core Rule

**AI output becomes official only when a human has reviewed it and is willing to be accountable for it.** An AI-generated document, commit, or decision has no more authority than a first draft until someone applies the same judgment they would to their own writing: does this hold up, is it accurate, does it avoid buzzwords and hype, does it match how W7 actually thinks (see the [Manifesto](../foundations/manifesto.md))?

This mirrors the [Engineering Standard](engineering-standard.md)'s position on tooling generally: a tool that produces output faster does not remove the obligation to understand and stand behind that output.

---

# Where AI Assistance Is Encouraged

- Drafting documentation for human review and revision, especially for restating existing canonical content in a new context (with a link back to the canonical source — see [Knowledge Architecture](../architecture/knowledge-architecture.md)).
- Exploring alternatives during the [Decision Framework](../framework/decision-framework.md) process — AI is a useful source of counterarguments precisely because it has no stake in the outcome.
- Boilerplate engineering work: scaffolding, tests for well-understood behavior, refactors with a clear specification.
- Reviewing existing documentation and code for buzzwords, inconsistency, or drift from these standards.

---

# Where Human Judgment Is Required Before Anything Ships

- Any change to `docs/foundations/`, `docs/identity/` or `docs/framework/` — these encode the reasoning W7 is built on, and reasoning that nobody actually holds is not a foundation.
- Any Type 2 or Type 3 decision under the [Decision Framework](../framework/decision-framework.md).
- Anything presented as a fact about W7's history, philosophy, or founder intent — the [Founder](../founder/README.md) documents in particular are first-person and are not to be AI-authored beyond assisting with phrasing of the founder's own account.
- Security-sensitive code or configuration, per the [Engineering Standard](engineering-standard.md).

---

# What AI Output Must Avoid

Per the [Documentation Standard](documentation-standard.md): buzzwords, marketing language, startup clichés, and AI-hype phrasing. AI-generated drafts have a documented tendency toward exactly this kind of language, which is precisely why review against this standard is not optional.

---

# Transparency

There is no requirement to annotate every sentence with its origin — that would be noise, not signal. There is a requirement that anyone contributing to W7 with AI assistance follows this standard the same way they follow the [Engineering](engineering-standard.md) and [Documentation](documentation-standard.md) standards: as an expectation, not a suggestion.

---

# Related Documents

- [Documentation Standard](documentation-standard.md) — the bar all writing, AI-assisted or not, must clear
- [Engineering Standard](engineering-standard.md) — the equivalent bar for code
- [Decision Framework](../framework/decision-framework.md) — where AI-assisted exploration ends and human decision-making begins
- [Information Boundaries](information-boundaries.md) — what AI tools should and should not have access to
