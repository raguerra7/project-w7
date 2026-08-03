# Product Framework

Version: 1.0.0

Status: Draft

Owner: Rafael da Silva Guerra

---

# Purpose

This document defines what a product is within W7, how it differs from an initiative, and how a new product is created inside an existing initiative.

---

# Context

An initiative is a purpose. A product is a concrete thing built to serve that purpose — a course, a tool, a piece of software, a written guide, a service. One initiative may have several products, or none yet, or products that come and go while the initiative itself continues. Without this distinction, "should this be its own initiative or just something WarTips ships" becomes a recurring, unresolved argument.

---

# Product vs. Initiative

| | Initiative | Product |
|---|---|---|
| Answers | What is this effort for? | What did we actually build? |
| Lifespan | Long-lived, may span years | Often shorter; may be retired independently of the initiative |
| Example | WarTips | A specific WarTips guide series, tool, or course |
| Governed by | [Initiative Framework](initiative-framework.md) | This document |

A product always belongs to exactly one initiative. If something seems to belong to none of the existing initiatives, that is a signal to evaluate it as a *new initiative*, not an orphaned product.

---

# Creating a New Product

1. **Identify the owning initiative.** A product without an initiative is not created — either it fits one, or the [Initiative Framework](initiative-framework.md) is used first.
2. **State the problem it solves for the initiative's audience**, in concrete terms, not aspirational ones.
3. **Answer the Constitution's four questions** (Article VI) at the product level: this is usually a lighter pass than the initiative-level version, but it is not skipped.
4. **Choose its technology deliberately**, following the principles in [Technology Stack](../architecture/technology-stack.md) rather than defaulting to whatever is trending.
5. **Document it** under its owning initiative's own repository or documentation section — product-level documentation does not live in `project-w7` unless the product *is* the documentation (as is currently the case for WarTips).

---

# What a Product Inherits

A product inherits everything its initiative inherits (see [Initiative Framework](initiative-framework.md)), plus whatever conventions its initiative has additionally established. It does not get to skip the [Engineering Standard](../standards/engineering-standard.md) or [Documentation Standard](../standards/documentation-standard.md) because it is "just a small thing" — small things are exactly what accumulates into an unmaintainable ecosystem if left unstandardized.

---

# Product Lifecycle

Products move through four stages, and every product's documentation should state which stage it is in:

| Stage | Meaning |
|---|---|
| `Exploring` | Being validated; may be discarded without ceremony |
| `Active` | Built, maintained, and the initiative's current focus |
| `Maintained` | Stable, not actively developed further, but supported |
| `Retired` | No longer maintained; documentation kept for historical continuity |

Retiring a product does not require retiring its initiative, and retiring an initiative does not erase the record of the products it shipped — see [Legacy](../foundations/legacy.md).

---

# Related Documents

- [Initiative Framework](initiative-framework.md) — the layer a product always belongs to
- [Decision Framework](decision-framework.md) — how significant product decisions are evaluated
- [Engineering Standard](../standards/engineering-standard.md) — the concrete engineering rules every product follows
- [WarTips](../initiatives/wartips/README.md) — where WarTips' own products are tracked
