# ADR-0006: Activate Governance and the Operating Frameworks

Status: Accepted

Date: 2026-08-03

Owner: Rafael da Silva Guerra

---

## Context

W7's Governance, Decision, Initiative and Product frameworks already described how authority, decisions, initiatives and products operate, but remained marked `Draft`. Activating them required aligning the ADR criteria with every shared governing layer, making the initiative template canonical instead of encouraging copies of WarTips, and removing a claim that treated WarTips as a product before any product had been formally registered.

## Constitutional Assessment

- **Why should this exist?** Active operating rules are necessary to apply the Foundation and Identity consistently.
- **Who benefits?** The founder, future maintainers, initiative leads and product contributors gain explicit authority and repeatable creation processes.
- **Will it remain valuable over time?** Yes. The rules define roles and decision boundaries independently of current team size or specific products.
- **Does it strengthen the W7 ecosystem?** Yes. Shared processes prevent duplicated governance, inconsistent initiative creation and orphaned products.

## Decision

Activate version 1.1.0 of Governance, Decision Framework, Initiative Framework and Product Framework as W7's operating model. Significant changes to Foundation, Identity, Governance or Framework require the Decision Framework. New initiatives use the canonical initiative template, and products are registered under exactly one owning initiative.

## Alternatives Considered

- **Keep the documents as Draft.** Rejected because WarTips and the roadmap already rely on these rules operationally.
- **Activate without resolving inconsistencies.** Rejected because active frameworks must agree with the current initiative registry and documentation standards.
- **Use WarTips as the initiative template.** Rejected because examples evolve with their own context; a canonical neutral template prevents accidental copying of initiative-specific decisions.
- **Delay governance until more contributors join.** Rejected because authority must be explicit before it can be delegated safely.

## Consequences

W7 now has an active path from significant decision to initiative and product creation. Future contributors can identify who approves a change and when an ADR is required. The framework creates process overhead for shared decisions, accepted in exchange for traceability and consistent inheritance.

## Related

- [Governance](../framework/governance.md)
- [Decision Framework](../framework/decision-framework.md)
- [Initiative Framework](../framework/initiative-framework.md)
- [Product Framework](../framework/product-framework.md)
- [ADR-0003](0003-initiative-governance-model.md)
- [ADR-0004](0004-activate-foundation-documents.md)
