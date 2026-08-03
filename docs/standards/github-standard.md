# GitHub Standard

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Purpose

This document defines how GitHub is used across W7 repositories: branching, commits, issues, pull requests and repository hygiene. It makes concrete the claim, made in [Knowledge Architecture](../architecture/knowledge-architecture.md), that GitHub is the official source of truth.

---

## Context

"GitHub is the source of truth" only means something if it is used consistently — the same branch conventions, the same commit style, the same expectations for what is public versus private. This document is what makes that claim operational rather than aspirational.

---

## Repository Conventions

- Every repository under the W7 ecosystem has a `README.md` at its root stating its purpose and, if it is an initiative or product repository, which initiative it belongs to (per the [Initiative Framework](../framework/initiative-framework.md)).
- Every repository has a `LICENSE` appropriate to its intended openness — chosen deliberately, not left as a default.
- `main` is always in a working, documentation-consistent state. Work in progress happens on branches, not directly announced as finished on `main`.

---

## Branching

- Branch names describe the work: `feature/<name>`, `fix/<name>`, `docs/<name>`, `refactor/<name>`.
- Long-lived branches are the exception, not the default — they are a sign that a decision is either large enough to need an ADR first, or should be broken into smaller pieces.

---

## Commits

Commits follow [Conventional Commits](https://www.conventionalcommits.org/): `type(scope): summary`, matching the [Engineering Standard](engineering-standard.md). When the reason is not clear from the summary and surrounding decision record, the commit body explains *why*, not merely *what* — the diff already shows what changed.

---

## Pull Requests

- A pull request description states what changed and why, not just what files were touched.
- Changes to `docs/foundations/`, `docs/identity/`, `docs/framework/`, `docs/architecture/` or `docs/standards/` are called out explicitly in the description, since they can affect every initiative that inherits from them.
- A pull request is small enough to review in one sitting whenever the work allows it to be.

---

## Issues

Issues are used for tracked, unfinished work — not as a substitute for documentation. Once resolved, the *decision* behind a significant issue belongs in an ADR or in the relevant standard, not only in a closed issue thread that is hard to discover later.

---

## Visibility

A repository's visibility (public/private) is a deliberate choice, revisited when circumstances change (see the status table in the root `README.md`), not an accident of how it was first created. Nothing that would violate the [Information Boundaries](information-boundaries.md) standard is ever made public by mistake because it was assumed to be private by default.

---

## Automation

Continuous integration (GitHub Actions) is used for verifiable, repeatable checks — building the documentation site, running tests, linting — never as a substitute for the review practices in the [Engineering Standard](engineering-standard.md).

---

## Related Documents

- [Documentation Standard](documentation-standard.md) — what every document must contain before it is committed
- [Engineering Standard](engineering-standard.md) — the practices this standard makes concrete on GitHub specifically
- [Information Boundaries](information-boundaries.md) — what does and does not belong in a public repository
- [Technology Stack](../architecture/technology-stack.md) — why GitHub was chosen, and its replaceability
