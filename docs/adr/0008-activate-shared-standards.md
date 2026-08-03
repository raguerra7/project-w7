# ADR-0008: Activate the Shared Standards

Status: Accepted

Date: 2026-08-03

Owner: Rafael da Silva Guerra

---

## Context

W7's Documentation, Engineering, GitHub, AI Usage and Information Boundaries standards were already referenced by active frameworks but remained marked `Draft`. Review found rules that were either internally contradictory or broader than the repository could safely apply: ADRs use a purpose-built record format, not living-document version metadata; not every initiative produces code; and Internal information should not be supplied indiscriminately to AI tools.

## Constitutional Assessment

- **Why should this exist?** Shared standards turn W7's principles into repeatable quality, security and review expectations.
- **Who benefits?** Contributors, maintainers, initiative leads and readers receive consistent artifacts and clearer information-handling boundaries.
- **Will it remain valuable over time?** Yes. The standards specify durable practices while avoiding mandatory languages, vendors or product architectures.
- **Does it strengthen the W7 ecosystem?** Yes. Common quality and safety rules allow initiatives to remain autonomous without drifting below the ecosystem baseline.

## Decision

Activate version 1.1.0 of the Documentation, Engineering, GitHub, AI Usage and Information Boundaries standards. ADRs retain their purpose-built template as an explicit documentation exception. Internal information may be used only with tools approved for its repository and handling context, while Private information remains outside Git and AI contexts.

## Alternatives Considered

- **Keep standards advisory or Draft.** Rejected because active initiatives and frameworks already claim to inherit them.
- **Apply the living-document schema to ADRs.** Rejected because decision records preserve a dated conclusion and have a distinct lifecycle defined by the ADR template.
- **Require engineering practices from every initiative regardless of output.** Rejected because non-technical initiatives may have no code; the standard applies when technical work exists.
- **Allow Internal information in any AI tool.** Rejected because classification without tool and data-handling controls would not create a meaningful boundary.

## Consequences

Shared W7 work now has an active minimum bar for documentation, engineering, GitHub collaboration, AI-assisted work and information classification. Initiative-specific standards may add constraints but may not weaken these baselines. Contributors must exercise judgment about tool approval and remain accountable for AI-assisted output.

## Related

- [Documentation Standard](../standards/documentation-standard.md)
- [Engineering Standard](../standards/engineering-standard.md)
- [GitHub Standard](../standards/github-standard.md)
- [AI Usage Standard](../standards/ai-usage-standard.md)
- [Information Boundaries](../standards/information-boundaries.md)
- [ADR Template](template.md)
