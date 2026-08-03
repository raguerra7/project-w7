# Architecture Overview

Version: 1.0.0

Status: Draft

Owner: Rafael da Silva Guerra

---

# Purpose

This document explains how W7 is structured as a system, independent of any single initiative or product. It is the map that everything else in `docs/architecture/`, `docs/framework/` and `docs/initiatives/` fits into.

---

# Context

W7 is not a single codebase, so its "architecture" is not a diagram of servers and databases. It is the structure of decisions, ownership and inheritance that lets many unrelated initiatives (WarTips today, others tomorrow) share one foundation without becoming tangled together or drifting apart.

An architecture document for an ecosystem like this has to answer one question well: **when something changes, what else is forced to change with it, and what is protected from that change?**

---

# The Layer Model

W7 is organized as ordered layers. Each layer may depend on the layers above it. No layer may depend on a layer below it.

```text
Foundation
   ↓
Identity
   ↓
Governance
   ↓
Framework
   ↓
Initiatives
   ↓
Products
   ↓
Experiences
   ↓
Continuous Learning
```

| Layer | Answers | Lives in | Changes |
|---|---|---|---|
| Foundation | Why does W7 exist? | `docs/foundations/` | Rarely, deliberately |
| Identity | How does W7 present itself? | `docs/identity/` | Occasionally |
| Governance | Who decides, and how? | `docs/framework/governance.md` | Occasionally |
| Framework | How are initiatives and products created? | `docs/framework/` | As patterns mature |
| Initiatives | What is currently being built? | `docs/initiatives/` | Frequently |
| Products | What ships to users? | Initiative-owned repositories | Frequently |
| Experiences | What do people actually feel and use? | Initiative-owned surfaces | Continuously |
| Continuous Learning | What did we learn, and where does it feed back in? | ADRs, retrospectives, this repository | Continuously |

A change at the bottom of the stack (an experience, a product feature) should never require a change at the top (the Constitution). A change at the top should be rare, and when it happens, it is expected to ripple downward.

---

# Inheritance, Not Duplication

Every initiative inherits from the Foundation and Identity layers by reference, not by copy.

WarTips does not restate the W7 philosophy in its own repository. It links to it. If the philosophy changes, every initiative's understanding of it changes at the same time, because there is exactly one copy.

Initiatives are free to extend what they inherit — a distinct voice, a distinct visual treatment, a distinct product decision — as long as the extension does not contradict the Foundation. Extension is welcome. Contradiction is not, and is resolved through the [Decision Framework](../framework/decision-framework.md).

---

# This Repository's Job

`project-w7` is the Foundation, Identity, Governance and Framework layers, plus a registry of Initiatives. It intentionally does not contain:

- Product code (that lives in each initiative's own repository)
- Personal notes or drafts (that stays in Obsidian / Rafael OS, see [Information Boundaries](../standards/information-boundaries.md))
- Anything that only makes sense to one initiative and no other

If a document only matters to WarTips, it belongs in WarTips' own repository, not here. If a document matters to every initiative that will ever exist under W7, it belongs here.

---

# Related Documents

- [Knowledge Architecture](knowledge-architecture.md) — how documentation itself is organized and kept coherent
- [Technology Stack](technology-stack.md) — the tools this architecture is built on
- [Initiative Framework](../framework/initiative-framework.md) — how a new layer-5 initiative is created
- [Constitution](../foundations/constitution.md) — the layer everything else inherits from
