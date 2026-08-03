# Knowledge Architecture

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Purpose

This document defines how knowledge is organized, where it lives, and how it is kept from decaying. W7 is, structurally, a knowledge organization before it is anything else — this is the architecture of that knowledge.

---

## Context

Documentation systems fail in predictable ways: the same fact is written in three places and only one gets updated; nobody knows which document is authoritative; old drafts are indistinguishable from current guidance; and eventually people stop trusting the documentation and start asking each other directly, which does not scale and does not survive anyone leaving.

This document exists to prevent that outcome, deliberately, before the repository grows large enough for it to happen by accident.

---

## One Fact, One Home

Every fact about W7 has exactly one canonical document. Every other document that needs that fact **links to it** instead of restating it.

Examples of canonical homes already established:

| Fact | Canonical home |
|---|---|
| Why W7 exists, its mission and vision | [Constitution](../foundations/constitution.md) |
| What "success" means | [Legacy](../foundations/legacy.md) |
| How initiatives are created | [Initiative Framework](../framework/initiative-framework.md) |
| How decisions get made | [Decision Framework](../framework/decision-framework.md) |
| Why a specific architectural choice was made | The relevant [ADR](../adr/template.md) |

When in doubt about whether to write something new or link to something existing, the answer is: search first, link if it exists, write only if it truly does not.

---

## Two Repositories, One Boundary

Knowledge about W7 lives in exactly two places, and they have different jobs.

**GitHub (this repository and each initiative's repository)** is the official, versioned, reviewable source of truth. If it isn't in GitHub, it isn't official — no exceptions, regardless of how complete or correct a note elsewhere might be.

**Obsidian (Rafael OS)** is personal knowledge management: drafts, half-formed ideas, private reflections, working notes that are not yet ready to be claims anyone else can rely on.

Obsidian never replaces GitHub. The moment a note in Obsidian is stable enough that someone else could reasonably act on it, it graduates into a Markdown document in the appropriate GitHub repository. Details on this boundary are in [Information Boundaries](../standards/information-boundaries.md).

---

## Status, Not Silence

Every document in this repository declares a `Status` in its header (`Draft`, `Active`, `Deprecated`, `Superseded`). A document with no status is a defect, not a stylistic omission — see the [Documentation Standard](../standards/documentation-standard.md).

`Deprecated` and `Superseded` documents are not deleted. History is kept and linked forward to whatever replaced them, the same way an ADR is never rewritten, only superseded by a new one. Deleting a document deletes the reasoning behind past decisions, which is exactly the knowledge a 10-year-old organization needs most.

---

## Discoverability Over Cleverness

Documents are organized by the layer they belong to (see [Architecture Overview](overview.md)), not by team, date, or author. A new reader should be able to find any document by asking "which layer does this belong to?" rather than by remembering who wrote it or when.

Cross-references exist at the bottom of every document under a `Related Documents` heading, so that no document is an island reachable only from the README.

---

## Related Documents

- [Architecture Overview](overview.md) — the layer model this knowledge structure supports
- [Documentation Standard](../standards/documentation-standard.md) — the concrete rules every document must follow
- [Information Boundaries](../standards/information-boundaries.md) — the GitHub / Obsidian boundary in detail
- [ADR Template](../adr/template.md) — how a decision becomes permanent knowledge
