# Documentation Standard

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Purpose

This document defines the concrete rules every document in W7 follows, so that documentation quality does not depend on who happens to be writing that day.

---

## Context

Principles alone ("write clearly") do not prevent drift; concrete, checkable rules do. This standard exists so that any document — written by the founder, a collaborator, or with AI assistance under the [AI Usage Standard](ai-usage-standard.md) — can be checked against the same bar.

---

## Every Canonical Document Must Have

1. A title as an H1.
2. A metadata header directly below the title: `Version`, `Status` (`Draft`, `Active`, `Deprecated`, or `Superseded`), `Owner`.
3. A `Purpose` section: what this document is for, in one or two sentences.
4. A `Context` section: why this document exists, when that is not obvious from the purpose alone.
5. A `Related Documents` section at the end, linking to the documents this one depends on or is depended on by.

A document missing any of these is incomplete, regardless of how good its prose is.

ADRs are the deliberate exception: numbered decision records follow the active [ADR Template](../adr/template.md), whose `Date`, `Context`, `Decision`, `Consequences` and `Related` fields preserve a decision rather than versioning a living document. Repository entry points and reusable templates may use a purpose-specific structure, but canonical claims belong in documents governed by this standard.

---

## Writing Rules

- **State claims plainly.** Avoid buzzwords, marketing language, startup clichés and AI-hype phrasing ("revolutionary," "game-changing," "cutting-edge," "unlock synergies"). If a sentence would fit equally well in any company's pitch deck, rewrite it or remove it.
- **Prefer the concrete over the abstract.** "Documents move through Draft, Active, Deprecated, Superseded" is better than "documents follow a lifecycle."
- **One fact, one home.** Do not restate what another document already states canonically — link to it. See [Knowledge Architecture](../architecture/knowledge-architecture.md).
- **Write for the reader in five years**, not the reader today who already has context. Assume the reader has never spoken to the author.
- **No placeholders.** A document that says "TODO" or "to be filled in" is not published — it does not exist yet.

---

## Structure and Formatting

- Markdown compatible with CommonMark, so its source remains readable in GitHub, MkDocs and any plain text editor. Repository-configured extensions such as Mermaid may enhance the rendered site without replacing readable source.
- Headings use `#`/`##` hierarchically; do not skip levels.
- Tables are used for comparisons and repeated structured fields when they scan more clearly than prose or a list.
- Horizontal rules (`---`) separate major sections for readability in both rendered and raw form.
- Internal links are always relative paths, never hardcoded to a specific host, so the repository works if it is ever mirrored or migrated.

---

## Versioning

A document's `Version` increments (`1.0.0` → `1.1.0`) on any meaningful content change, and (`1.0.0` → `2.0.0`) when its conclusions change, not merely its wording. Typo fixes do not require a version bump. This mirrors semantic versioning deliberately — documentation changes have the same three questions as code changes: is this a fix, an addition, or a breaking change to what readers already relied on?

---

## Review

Any document that changes a Foundation, Identity, Governance or Framework layer file goes through the [Decision Framework](../framework/decision-framework.md) before merging, regardless of how small the change looks.

---

## Related Documents

- [Knowledge Architecture](../architecture/knowledge-architecture.md) — why these rules exist structurally
- [GitHub Standard](github-standard.md) — how documents move through review and merge
- [AI Usage Standard](ai-usage-standard.md) — how this standard applies to AI-assisted writing
- [Engineering Standard](engineering-standard.md) — the equivalent standard for code
