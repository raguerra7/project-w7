# Ecosystem Topology

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Purpose

This document is a visual complement to [Architecture Overview](overview.md): the same layer model, repository structure and initiative inheritance rules, expressed as diagrams instead of tables and prose.

---

## Context

The Architecture Overview explains the layer model in words. Some relationships — especially inheritance and the feedback loop back into the Foundation — are easier to verify correct as a diagram than as a table. This document exists so that "does this change respect the topology?" can be checked visually, not just argued in text.

---

## Layer Model

```mermaid
flowchart TD
    F[Foundation<br/><small>docs/foundations/</small>]
    I[Identity<br/><small>docs/identity/</small>]
    G[Governance<br/><small>docs/framework/governance.md</small>]
    FR[Framework<br/><small>docs/framework/</small>]
    IN[Initiatives<br/><small>docs/initiatives/</small>]
    P[Products<br/><small>initiative-owned repositories</small>]
    E[Experiences<br/><small>initiative-owned surfaces</small>]
    L[Continuous Learning<br/><small>docs/adr/, retrospectives</small>]

    F --> I --> G --> FR --> IN --> P --> E --> L
    L -.->|feeds back as an ADR or amendment| F

    classDef stable fill:#1f2937,stroke:#9ca3af,color:#f9fafb;
    classDef volatile fill:#374151,stroke:#6b7280,color:#f9fafb;
    class F,I,G stable
    class FR,IN,P,E,L volatile
```

Dependencies only ever point downward (solid arrows). The only upward path is the dotted feedback loop — a lesson learned at any layer becomes an ADR, and only a deliberate, reviewed ADR is allowed to change the Foundation. See [Decision Framework](../framework/decision-framework.md).

---

## Repository Structure

```mermaid
flowchart LR
    subgraph Repo["project-w7"]
        direction TB
        README["README.md"]
        subgraph docs["docs/"]
            direction TB
            found["foundations/<br/>constitution, manifesto,<br/>vision, legacy"]
            ident["identity/<br/>brand-architecture"]
            arch["architecture/<br/>overview, knowledge-architecture,<br/>technology-stack, topology"]
            fram["framework/<br/>governance, decision-,<br/>initiative-, product-framework"]
            init["initiatives/<br/>wartips/"]
            std["standards/<br/>documentation-, engineering-,<br/>github-, ai-usage-standard,<br/>information-boundaries"]
            adr["adr/<br/>template, numbered records"]
            road["roadmap/"]
            fdr["founder/<br/>letter, origin-story"]
        end
        tmpl["templates/"]
        scr["scripts/"]
        gh[".github/<br/>workflows, issue &amp; PR templates"]
    end

    found --> ident --> fram
    fram --> init
    arch -.->|documents the structure of| Repo
    std -.->|governs how every folder is written| docs
    adr -.->|records why found/fram changed| found
    adr -.->|records why found/fram changed| fram
```

Folder placement is not cosmetic — it is the mechanism that enforces the layer model in the previous diagram. A document in the wrong folder implies the wrong dependency direction. See [ADR-0002](../adr/0002-layered-repository-architecture.md).

---

## Initiative Inheritance

```mermaid
flowchart TD
    W7["W7<br/><small>Foundation + Identity + Governance + Framework</small>"]
    WT["WarTips<br/><small>Active initiative</small>"]
    F1["Future initiative<br/><small>e.g. Home Lab</small>"]
    F2["Future initiative<br/><small>e.g. Academy</small>"]

    W7 -->|inherits by reference, not copy| WT
    W7 -->|inherits by reference, not copy| F1
    W7 -->|inherits by reference, not copy| F2

    WT --> WTP1["Product<br/><small>none registered yet</small>"]
    F1 --> F1P["Products<br/><small>defined when created</small>"]
    F2 --> F2P["Products<br/><small>defined when created</small>"]
```

Every initiative points back to exactly one W7. No initiative points to another initiative — cross-initiative dependencies are deliberately not part of this topology. If one is ever needed, it is a Type 2/3 decision under the [Decision Framework](../framework/decision-framework.md), not an informal link between two `docs/initiatives/` folders.

---

## Knowledge Boundary

```mermaid
flowchart LR
    subgraph Obsidian["Obsidian — Rafael OS"]
        drafts["Drafts, private reflections,<br/>working notes"]
    end
    subgraph GitHub["GitHub — official record"]
        official["Reviewed Markdown,<br/>versioned, linkable"]
    end

    drafts -->|graduates once stable enough<br/>for someone else to rely on| official
    official -.->|never flows back as private notes| drafts
```

This is a one-way graduation, never a sync. See [Information Boundaries](../standards/information-boundaries.md).

---

## Related Documents

- [Architecture Overview](overview.md) — the prose version of the layer model diagrammed above
- [Knowledge Architecture](knowledge-architecture.md) — the reasoning behind the knowledge boundary diagram
- [ADR-0002: Layered Repository Architecture](../adr/0002-layered-repository-architecture.md) — why the repository is shaped this way
- [Initiative Framework](../framework/initiative-framework.md) — the process behind the inheritance diagram
