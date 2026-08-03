# ADR-0007: Activate the Ecosystem Architecture

Status: Accepted

Date: 2026-08-03

Owner: Rafael da Silva Guerra

---

## Context

The Architecture Overview, Topology, Knowledge Architecture and Technology Stack describe how W7 is layered, where knowledge belongs and which tools support the repository. They remained marked `Draft` even though ADR-0001 and ADR-0002 had already accepted their central decisions. Activation required removing a fixed ADR enumeration from the topology and distinguishing open formats from replaceable proprietary hosting services in the technology rationale.

## Constitutional Assessment

- **Why should this exist?** W7 needs an explicit structural model so changes have predictable scope and knowledge has a canonical home.
- **Who benefits?** Contributors and initiative maintainers can place documents, decisions and product work without creating hidden dependencies.
- **Will it remain valuable over time?** Yes. The layer and knowledge models are independent of individual products, while the technology stack is designed for replacement.
- **Does it strengthen the W7 ecosystem?** Yes. Shared architecture prevents duplication and preserves recoverability as initiatives multiply.

## Decision

Activate version 1.1.0 of the Architecture Overview, Ecosystem Topology, Knowledge Architecture and Technology Stack. W7 retains its ordered layer model, one-fact-one-home rule, GitHub/Obsidian boundary and plain-text static documentation stack.

## Alternatives Considered

- **Keep architecture implicit in the folder structure.** Rejected because folders alone do not explain allowed dependencies or change impact.
- **Activate only the prose overview.** Rejected because the diagrams, knowledge rules and implementation stack describe separate aspects required to operate the same architecture.
- **Treat every tool as open infrastructure.** Rejected because GitHub is a proprietary venue; portability comes from Git and open source formats, not from pretending the venue is open.
- **Keep the documents as Draft.** Rejected because accepted ADRs and active frameworks already depend on these architectural rules.

## Consequences

Repository placement and dependency direction become active constraints. Official knowledge remains in GitHub repositories and private working knowledge remains in Rafael OS until promoted. Hosted services may change, but canonical content must stay portable in plain-text formats.

## Related

- [Architecture Overview](../architecture/overview.md)
- [Ecosystem Topology](../architecture/topology.md)
- [Knowledge Architecture](../architecture/knowledge-architecture.md)
- [Technology Stack](../architecture/technology-stack.md)
- [ADR-0001](0001-github-as-source-of-truth.md)
- [ADR-0002](0002-layered-repository-architecture.md)
