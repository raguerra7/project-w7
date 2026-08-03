# ADR-0002: Layered Repository Architecture

Status: Accepted

Date: 2026-08-03

Owner: Rafael da Silva Guerra

---

## Context

`project-w7` needs to hold the philosophy, identity, governance and framework shared by every current and future initiative, while also being where WarTips (and whatever comes after it) is registered. As more initiatives are added, an unstructured, flat collection of documents becomes ambiguous about what depends on what, and what is safe to change without affecting everything downstream of it — the exact failure mode described in [Architecture Overview](../architecture/overview.md).

## Decision

The repository is organized into ordered layers — Foundation, Identity, Governance, Framework, Initiatives, with Products and Experiences living in each initiative's own repository — where each layer may depend only on the layers above it, never below. Concretely: `docs/foundations/`, `docs/identity/`, `docs/framework/` (which includes governance), `docs/initiatives/`, backed by `docs/architecture/`, `docs/standards/`, `docs/adr/` and `docs/roadmap/` as supporting layers used throughout.

## Alternatives Considered

- **Organize by initiative first, shared concerns second** (e.g., `wartips/`, `homelab/`, each with its own copy of philosophy and standards). Rejected: guarantees duplication and drift the moment there is more than one initiative — the opposite of "one fact, one home" in [Knowledge Architecture](../architecture/knowledge-architecture.md).
- **A single flat `docs/` folder with no layering.** Rejected: works while the repository is small, fails silently as it grows — nothing signals which documents are safe to edit casually and which ripple across every initiative.
- **Separate repositories per layer** (a `w7-foundation` repo, a `w7-framework` repo, etc.). Rejected: adds cross-repository reference overhead disproportionate to the actual size of these documents; folders within one repository are sufficient at this scale and can be split later if that ever changes.

## Consequences

Any contributor can determine the blast radius of a change by which folder it's in, without reading every other document first. New initiatives have an unambiguous place to be registered ([Initiative Framework](../framework/initiative-framework.md)) without touching the Foundation. The cost is that this structure must be maintained deliberately — a document placed in the wrong layer (e.g., initiative-specific content leaking into `docs/foundations/`) undermines the whole model, so placement is checked as part of the [Documentation Standard](../standards/documentation-standard.md) review.

## Related

- [Architecture Overview](../architecture/overview.md)
- [Knowledge Architecture](../architecture/knowledge-architecture.md)
- [Initiative Framework](../framework/initiative-framework.md)
