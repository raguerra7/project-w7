# Initiative Framework

Version: 1.0.0

Status: Draft

Owner: Rafael da Silva Guerra

---

# Purpose

This document defines what an initiative is, how a new one is created under W7, and what it inherits versus what it is free to define for itself.

---

# Context

WarTips is the first initiative. It will not be the last. Without a written framework, each new initiative would be created by copying whatever WarTips happened to do, mistakes included, and the reasoning behind W7's structure would have to be reverse-engineered every time. This document is written so that the second, fifth and twentieth initiative can be started with the same clarity as the first.

---

# What an Initiative Is

An initiative is a distinct effort — technical, educational, creative or otherwise — created under the W7 ecosystem to pursue a specific purpose, with its own audience, its own cadence, and typically its own repository.

An initiative is **not** a legal entity, a product, or a team. It may eventually contain several products (see [Product Framework](product-framework.md)), or none yet. WarTips today is a single initiative expressed through documentation and content; it may grow into several products later without becoming a different initiative.

---

# What Every Initiative Inherits

Every initiative, without exception, inherits from the layers above it in [Architecture Overview](../architecture/overview.md):

- The [Constitution](../foundations/constitution.md), [Manifesto](../foundations/manifesto.md), [Vision](../foundations/vision.md) and [Legacy](../foundations/legacy.md) — by reference, never by copy.
- The W7 [Identity](../identity/brand-architecture.md) rules for how it relates to the master brand.
- The [Governance](governance.md) model, at least until it earns enough scale to warrant its own initiative-specific governance layer.
- The [Documentation](../standards/documentation-standard.md), [Engineering](../standards/engineering-standard.md) and [GitHub](../standards/github-standard.md) standards.

---

# What Every Initiative Defines for Itself

- Its own name, voice and visual expression, within the bounds of the Identity layer.
- Its own audience, cadence, and choice of products.
- Its own technology choices, following the principles (not the specific tools) in [Technology Stack](../architecture/technology-stack.md).
- Its own repository, issue tracker and release process.

An initiative that finds itself needing to contradict a Foundation-layer principle to succeed is a signal to raise that contradiction through the [Decision Framework](decision-framework.md) — not to quietly diverge.

---

# Creating a New Initiative

1. **State the purpose.** One paragraph: what this initiative exists to do that no existing initiative already covers.
2. **Answer the Constitution's four questions** (Article VI) for the initiative as a whole, not just for a single product inside it.
3. **Register it** in `docs/initiatives/<initiative-name>/README.md` in this repository, using WarTips' documentation as the reference shape.
4. **Add it to the ecosystem table** in the root [README](https://github.com/raguerra7/project-w7#readme) and to the [Roadmap](../roadmap/roadmap.md) if it is not yet active.
5. **Create the initiative's own repository**, if it needs one, following the [GitHub Standard](../standards/github-standard.md).

A new initiative does not need permission to exist experimentally — it needs this process before it is presented as an official, active part of the W7 ecosystem.

---

# Retiring an Initiative

Initiatives end. That is expected, not a failure (see [Legacy](../foundations/legacy.md)). Retiring one means: marking its entry `Status: Retired` in `docs/initiatives/`, keeping its documentation rather than deleting it, and recording the decision as an ADR if the initiative had any dependents relying on it.

---

# Related Documents

- [Product Framework](product-framework.md) — how a specific product inside an initiative is created
- [Decision Framework](decision-framework.md) — how to resolve a conflict between an initiative and the Foundation
- [WarTips](../initiatives/wartips/README.md) — the reference example this framework is built from
- [Governance](governance.md) — how authority over an initiative is assigned
