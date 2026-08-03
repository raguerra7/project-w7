# ADR-0003: Initiative Governance Model

Status: Accepted

Date: 2026-08-03

Owner: Rafael da Silva Guerra

---

## Context

W7 is designed to work whether it stays a personal brand, becomes a consulting practice, a SaaS company, an education company, or an open-source organization ([Constitution](../foundations/constitution.md), Article VII). WarTips exists today as the first initiative; more will follow. A governance model was needed for how much autonomy an initiative has, and who can change the shared layers it depends on, before a second initiative or a second contributor makes the lack of a model a real, contested problem instead of a theoretical one.

## Decision

Initiatives have full autonomy over their own products, voice and technology choices, inheriting the Foundation, Identity and Framework layers by reference rather than by copy. They do not have unilateral authority to change those inherited layers — such changes go through the [Decision Framework](../framework/decision-framework.md), regardless of which initiative proposes them. Authority is assigned per layer in [Governance](../framework/governance.md), explicitly naming the founder as the current holder of authority at every layer, rather than leaving it implicit.

## Alternatives Considered

- **Full initiative independence, no shared governance.** Rejected: this is indistinguishable from initiatives not actually being part of one ecosystem, and reintroduces the duplication problem ADR-0002 exists to prevent.
- **Centralized approval required for every initiative-level decision, including product details.** Rejected: this does not scale past a single founder and contradicts the Constitution's Article V, which grants initiatives freedom to develop their own products and visual language.
- **Leave governance unstated until a second contributor makes it necessary.** Rejected: an unstated single point of authority cannot be handed off, delegated, or reasoned about by anyone joining later — the cost of writing it down now is small, and the cost of not having it when it's needed is not.

## Consequences

A future initiative lead knows exactly what they can decide unilaterally versus what requires going through the [Decision Framework](../framework/decision-framework.md). Bringing on a collaborator or a second initiative does not require inventing a governance model under time pressure — [Governance](../framework/governance.md) already has a role for them. The cost is that today, with a single founder, some of this structure is not yet load-bearing; it is accepted as documentation for a state W7 is designed to grow into, not evidence that this complexity is needed today.

## Related

- [Governance](../framework/governance.md)
- [Initiative Framework](../framework/initiative-framework.md)
- [Constitution](../foundations/constitution.md), Articles V and VII
