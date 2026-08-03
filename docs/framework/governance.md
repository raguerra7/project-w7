# Governance

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Purpose

This document defines who has authority over each layer of W7, and how that authority is expected to change as the ecosystem grows from one person to a team, a company, or an open-source community.

---

## Context

Governance written for a single founder is easy to get wrong in two opposite directions: over-formalizing a process that today is just one person's judgment, or under-specifying it so badly that it cannot survive that person stepping back, delegating, or bringing in collaborators. This document aims for the minimum structure that is still true today and still correct if W7 grows.

---

## Authority by Layer

Authority follows the layer model in [Architecture Overview](../architecture/overview.md): the higher the layer, the narrower and more deliberate the authority to change it.

| Layer | Who can propose changes | Who approves |
|---|---|---|
| Foundation | Anyone contributing to W7 | Founder (today); a designated Foundation steward in the future |
| Identity | Anyone contributing to W7 | Founder or whoever holds brand ownership |
| Governance | Anyone contributing to W7 | Founder; requires an ADR |
| Framework | Anyone contributing to W7 | Founder or framework maintainers |
| Initiatives | Initiative maintainers | Initiative lead, within the bounds of the Framework |
| Products | Product maintainers | Product/initiative lead |

An initiative lead has full authority over their own initiative's products and experiences. They do not have authority to change the Foundation, Identity or Framework layers unilaterally — those changes go through the [Decision Framework](decision-framework.md) because they affect every other initiative too.

---

## Today's Model

As of this writing, W7 has a single founder who holds authority at every layer. This is stated explicitly rather than left implicit, because an unstated single point of authority is indistinguishable from a system with no governance at all — and both fail the same way if that person is unavailable.

The table above is written for the organization W7 is designed to become, not only the one it is today, so that adding a second contributor or an initiative lead is a matter of assigning a role that already exists in this document, not inventing one under pressure.

---

## Amending the Constitution

The [Constitution](../foundations/constitution.md) is the one document with a higher bar than the table above implies. A Constitutional amendment:

1. Must be proposed in writing, stating which Article changes and why.
2. Must be recorded as an ADR, regardless of how small it seems.
3. Takes effect only after the founder (or, in the future, whichever governance body holds Foundation authority) explicitly approves it.
4. Never happens silently as a side effect of another change.

---

## New Initiatives and New Contributors

Bringing in a new initiative or a new contributor with governance authority is itself a Type 2 or Type 3 decision under the [Decision Framework](decision-framework.md), and is expected to update this document's tables when it happens — this document is written to be edited, not treated as immutable the way the Constitution is.

---

## Related Documents

- [Constitution](../foundations/constitution.md), Article VI — the questions every governance decision must answer
- [Decision Framework](decision-framework.md) — the process this document assigns authority over
- [Initiative Framework](initiative-framework.md) — how initiative leads acquire their authority in the first place
- [Architecture Overview](../architecture/overview.md) — the layer model authority is organized around
