# Technology Stack

Version: 1.0.0

Status: Draft

Owner: Rafael da Silva Guerra

---

# Purpose

This document lists the tools W7 is built on at the foundation layer, and the reasoning behind each choice. It does not list technology choices made inside individual initiatives — those belong to the initiative's own repository and inherit only the principles below, not the specific tools.

---

# Context

Every tool listed here was chosen because it is boring, open, and likely to still be usable in ten years without anyone's permission. This is a deliberate bias. Exciting, proprietary or trend-driven tooling is a liability in a repository meant to outlast whatever is popular the year it was written.

---

# Principles Behind the Choices

**Open formats over proprietary ones.** Anything that stores W7's knowledge must be readable with a text editor and a Git client alone, with no vendor account required to recover it.

**Plain text over binary.** Markdown, YAML and plain text diff cleanly, merge predictably, and survive tool migrations. Binary formats (proprietary word processors, design tool project files) are avoided for anything canonical.

**Git as the mechanism, GitHub as the venue.** The mechanism (Git) is portable and vendor-independent. The venue (GitHub) is replaceable if it ever needs to be, because the mechanism underneath it is not locked in.

**Static over dynamic.** Nothing in this repository requires a running server, a database, or an account to read. A clone of this repository, opened with any text editor, is fully self-contained.

---

# The Stack

| Layer | Choice | Why |
|---|---|---|
| Source control | Git | Distributed, open, the de facto standard; not tied to any single host |
| Hosting | GitHub | Where the team already collaborates; not treated as irreplaceable — see below |
| Documentation format | Markdown (CommonMark) | Readable as plain text, renders everywhere, no proprietary lock-in |
| Documentation site | MkDocs (Material theme) | Static site generator with no server dependency; builds directly from the Markdown already in this repository, nothing is duplicated to produce it |
| Decision records | ADRs (Markdown, [template](../adr/template.md)) | Lightweight, versioned alongside the decisions they document |
| Commit convention | [Conventional Commits](https://www.conventionalcommits.org/) | Machine-parseable history; enables changelogs and makes intent explicit at a glance |
| Continuous integration | GitHub Actions | Builds and publishes the documentation site on every change to `main` |
| Personal knowledge management | Obsidian ("Rafael OS") | Explicitly **not** part of the stack that produces official documentation — see [Information Boundaries](../standards/information-boundaries.md) |

---

# What Is Deliberately Not Here

There is no database, no backend service, and no build step that isn't a static site generator. If a future initiative needs any of those, it is that initiative's decision to make in its own repository, following the [Product Framework](../framework/product-framework.md) — it does not become part of this repository's stack.

---

# Reversibility

GitHub was chosen for convenience and reach, not because W7 depends on it existing forever. Everything in this repository is plain Markdown under Git; migrating hosts is a `git remote set-url` away, not a rewrite. This is intentional: the tool should always be easier to replace than the knowledge it holds.

---

# Related Documents

- [Architecture Overview](overview.md) — the layer model this stack supports
- [GitHub Standard](../standards/github-standard.md) — how this repository is actually used day to day
- [Engineering Standard](../standards/engineering-standard.md) — how initiative repositories are expected to operate
- [ADR-0001: GitHub as the Single Source of Truth](../adr/0001-github-as-source-of-truth.md) — the decision to make GitHub the source of truth
