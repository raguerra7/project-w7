# ADR Template

Version: 1.0.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Purpose

This is the template every Architecture Decision Record (ADR) in W7 follows. Copy this file, rename it `NNNN-short-decision-title.md` using the next sequential number, and fill in every section before merging.

---

## Context

ADRs exist to answer one question for a future reader: *why was this decided, given what was known at the time?* A good ADR is honest about the alternatives that were rejected and why, not just the conclusion reached. It is written when the decision is made, never backfilled to justify a decision after the fact.

---

## What Qualifies for an ADR

Per the [Decision Framework](../framework/decision-framework.md): anything that changes a Foundation, Identity, Governance or Framework layer document, creates or retires an initiative, introduces a convention other initiatives will inherit, or is otherwise expensive to reverse.

---

## Template

```markdown
# ADR-NNNN: <Short, specific title>

Status: Proposed | Accepted | Superseded by ADR-XXXX | Deprecated

Date: YYYY-MM-DD

Owner: <name>

---

## Context

What situation made this decision necessary? What constraints applied?

## Decision

What was decided, stated as a plain sentence, not a question.

## Alternatives Considered

- Alternative A — why it was not chosen
- Alternative B — why it was not chosen
- Doing nothing — why that was not sufficient

## Consequences

What becomes easier because of this decision? What becomes harder or
is given up? What does this commit future initiatives to?

## Related

Links to the documents or ADRs this decision affects or depends on.
```

---

## Lifecycle

An ADR is never edited to change its conclusion after it is `Accepted`. If circumstances change, a new ADR is written, marked `Superseded by ADR-XXXX`, and the old one is updated only to add that status line — its original reasoning stays intact as a historical record, per [Knowledge Architecture](../architecture/knowledge-architecture.md).

---

## Related Documents

- [Decision Framework](../framework/decision-framework.md) — when this template is used
- [ADR-0001](0001-github-as-source-of-truth.md), [ADR-0002](0002-layered-repository-architecture.md), [ADR-0003](0003-initiative-governance-model.md) — the first three decisions recorded using this template
