# Ecosystem Topology

Version: 1.2.0

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
    F["Foundation<br/>Why W7 exists"]
    I["Identity<br/>How W7 is expressed"]
    G["Governance<br/>Who decides"]
    FR["Framework<br/>How work is created"]
    IN["Initiatives<br/>Enduring areas of work"]
    P["Products<br/>Maintained outputs"]
    E["Experiences<br/>What people encounter"]
    L["Learning<br/>Evidence and ADRs"]

    F --> I --> G --> FR --> IN --> P --> E --> L
    L -.->|feeds back as an ADR or amendment| F

    classDef stable fill:#111111,stroke:#c8a45d,color:#ffffff,stroke-width:2px;
    classDef volatile fill:#f7f7f5,stroke:#666666,color:#111111;
    class F,I,G stable
    class FR,IN,P,E,L volatile
```

Dependencies only ever point downward (solid arrows). The only upward path is the dotted feedback loop — a lesson learned at any layer becomes an ADR, and only a deliberate, reviewed ADR is allowed to change the Foundation. See [Decision Framework](../framework/decision-framework.md).

---

## Repository Structure

```mermaid
flowchart TB
    ROOT["project-w7<br/>Canonical ecosystem repository"]
    ROOT --> GOV["Governing layers"]
    ROOT --> WORK["Operating layers"]
    ROOT --> SUPPORT["Repository support"]

    GOV --> FOUND["foundations/"]
    GOV --> IDENT["identity/"]
    GOV --> FRAME["framework/"]

    WORK --> INIT["initiatives/"]
    WORK --> ARCH["architecture/"]
    WORK --> STD["standards/"]
    WORK --> ADR["adr/"]
    WORK --> ROAD["roadmap/"]
    WORK --> FOUNDER["founder/"]

    SUPPORT --> TEMPLATES["templates/"]
    SUPPORT --> SCRIPTS["scripts/"]
    SUPPORT --> GITHUB[".github/"]

    FOUND --> IDENT --> FRAME --> INIT
    STD -.-> GOV
    ADR -.-> GOV
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
