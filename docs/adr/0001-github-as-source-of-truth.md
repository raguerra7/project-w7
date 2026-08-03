# ADR-0001: GitHub as the Single Source of Truth

Status: Accepted

Date: 2026-08-03

Owner: Rafael da Silva Guerra

---

## Context

W7's knowledge is produced in two places: GitHub, where documentation can be versioned, reviewed and shared, and Obsidian ("Rafael OS"), used for fast personal capture of ideas as they occur. Both are useful, and both were already in active use before this decision was written down. Without an explicit ruling, it is ambiguous which one a collaborator, a future team member, or the founder's future self should trust when the two disagree.

## Decision

GitHub is the single official source of truth for W7. Any document, decision, or claim that has not been committed to the appropriate GitHub repository is not official, regardless of how complete or long-standing it is elsewhere. Obsidian remains in continuous use for personal knowledge management, but never as a substitute for GitHub, per [Information Boundaries](../standards/information-boundaries.md).

## Alternatives Considered

- **Obsidian as the source of truth, with GitHub as a periodic export.** Rejected: this makes the canonical version live in a single-user, non-diffable, non-reviewable tool, which does not scale past one person and does not benefit from Git's history or review model.
- **Treat both as equally authoritative, resolved case by case.** Rejected: this reintroduces the exact ambiguity this ADR exists to remove, and only shifts the disagreement to "which one wins this time."
- **A dedicated wiki or documentation platform outside GitHub.** Rejected: introduces a second system to maintain, review and secure, without a clear benefit over Markdown already versioned in Git, and works against the open-format, no-lock-in principle in [Technology Stack](../architecture/technology-stack.md).

## Consequences

Every initiative under W7 knows unambiguously where to look for and commit official knowledge. Obsidian remains useful for exploration without needing to be "clean" or presentable. The cost is discipline: ideas captured in Obsidian must be deliberately graduated into GitHub before anyone else can rely on them, and that graduation step will sometimes be skipped by mistake — this is an accepted, monitored cost rather than an unknown one.

## Related

- [Knowledge Architecture](../architecture/knowledge-architecture.md)
- [Information Boundaries](../standards/information-boundaries.md)
- [Technology Stack](../architecture/technology-stack.md)
