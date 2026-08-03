# Decision Framework

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Purpose

This document defines how decisions are made within W7, so that judgment calls are consistent even as the people making them, or the number of people involved, changes over time.

---

## Context

A single founder can hold an entire decision-making process in their head and never notice it is a process. That stops being true the moment a second person, a collaborator, or a future team needs to make a decision the same way Rafael would have. Writing the process down now, while it is still simple, is cheaper than reconstructing it later under pressure.

---

## The Four Questions

The [Constitution](../foundations/constitution.md), Article VI, establishes four questions that any significant decision must answer:

1. **Why should this exist?**
2. **Who benefits?**
3. **Will it remain valuable over time?**
4. **Does it strengthen the W7 ecosystem?**

If any answer is genuinely no, the decision should be reconsidered before it is made, not after it ships.

This document operationalizes those four questions into something usable in practice.

---

## What Counts as "Significant"

Not every decision needs this framework. Day-to-day implementation choices inside an initiative do not. A decision goes through this framework when it does at least one of the following:

- Changes the Foundation, Identity, Governance or Framework layers
- Creates a new initiative or discontinues an existing one
- Introduces a dependency, tool, or convention that other initiatives will be expected to inherit
- Cannot be easily reversed within a normal iteration cycle

When in doubt, write an ADR. Writing it down is the cheapest way to find out whether a decision was actually significant.

---

## The Process

1. **State the decision as a question**, not as a conclusion already reached. "Should WarTips adopt a paid tier?" not "WarTips will have a paid tier."
2. **Answer the four Constitutional questions** explicitly, in writing.
3. **List the alternatives considered**, including "do nothing." A decision with no alternatives listed has usually not been examined closely enough.
4. **Record the decision as an ADR** if it meets the significance criteria above, using the [ADR Template](../adr/template.md).
5. **Let the decision breathe.** Significant, hard-to-reverse decisions are not made in the same sitting they are proposed in, when that is practical.

---

## Reversibility as a First-Class Property

Every decision is classified by how expensive it is to reverse:

| Class | Meaning | Example |
|---|---|---|
| Type 1 | Easily reversible | Choice of a linter, a document's structure |
| Type 2 | Reversible with real cost | A framework convention adopted by multiple initiatives |
| Type 3 | Effectively irreversible | A change to the Constitution, discontinuing an initiative's identity |

Type 1 decisions should be made quickly and without ceremony. Type 3 decisions deserve the full process above, deliberately slowed down. Treating a Type 1 decision like a Type 3 one is as much a failure of judgment as the reverse.

---

## Disagreement

W7 is designed to scale from one person to many. When more than one person is involved in a decision and they disagree, the tie-breaker is whichever answer better satisfies the four Constitutional questions — not seniority, not who spoke first. If the disagreement is about the Constitution itself, it is resolved through [Governance](governance.md), not through this framework.

---

## Related Documents

- [Constitution](../foundations/constitution.md), Article VI — the four questions this framework operationalizes
- [Governance](governance.md) — who holds decision-making authority at each layer
- [ADR Template](../adr/template.md) — how a significant decision is recorded permanently
- [Initiative Framework](initiative-framework.md) and [Product Framework](product-framework.md) — the two most common places this framework is applied
