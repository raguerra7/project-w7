# W7 Operating Model

Version: 1.0.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Purpose

This document explains how W7 converts its Foundation into governed initiatives and useful outcomes.

---

## Context

W7 is an ecosystem and operating model, not a promise to adopt one legal form or business model. A shared sequence keeps new work coherent without centralizing every initiative-level decision.

---

## The Model

```text
Foundation → Identity → Governance → Framework → Initiatives → Products → Experiences
```

Each layer inherits constraints from the layers to its left. A downstream layer may specialize them but may not contradict them.

| Layer | Question | Canonical home |
|---|---|---|
| Foundation | Why do we exist and how do we behave? | `docs/foundations/` |
| Identity | How is belonging to W7 expressed? | `docs/identity/` |
| Governance | Who decides and how is change approved? | `docs/framework/governance.md` |
| Framework | How are decisions, initiatives, and products created? | `docs/framework/` |
| Initiatives | What enduring areas of work exist? | `docs/initiatives/` |
| Products | What maintained outputs does an initiative own? | Initiative repository |
| Experiences | How do people encounter the output? | Product or initiative repository |

## Operating Cycle

1. **Capture:** collect observations and ideas; personal notes may begin in Rafael OS, but have no official authority.
2. **Clarify:** define purpose, beneficiary, boundaries, evidence, and expected value.
3. **Decide:** classify the decision and record an ADR when required.
4. **Build:** create the smallest useful outcome under the relevant standards.
5. **Validate:** review correctness, consistency, security, usability, and documentation.
6. **Publish:** commit the canonical result to the owning GitHub repository.
7. **Learn:** observe outcomes and feed evidence into the next cycle.

## Source of Truth

GitHub repositories hold W7's official record. Rafael OS is limited to personal knowledge management and early capture, as defined by Information Boundaries; content becomes official only after review and commit.

## Measures of Health

W7 evaluates the model through purpose alignment, maintained knowledge, decision traceability, initiative autonomy, useful outcomes, and the absence of avoidable dependency or information risk.

---

## Related Documents

- [Architecture Overview](../architecture/overview.md) — structural dependency rules
- [Governance](../framework/governance.md) — authority by layer
- [Initiative Framework](../framework/initiative-framework.md) — initiative lifecycle
- [Information Boundaries](../standards/information-boundaries.md) — official and personal knowledge boundaries
