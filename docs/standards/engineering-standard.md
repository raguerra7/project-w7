# Engineering Standard

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Purpose

This document defines the baseline engineering practices every initiative and product under W7 is expected to follow, regardless of the specific language or stack it chooses.

---

## Context

`project-w7` itself contains no application code, but many initiatives and products will. Without a shared baseline, each technical effort would reinvent — or skip — basic engineering discipline independently, and quality would depend entirely on who happened to build it. This standard is deliberately about *practices*, not *technologies*; see [Technology Stack](../architecture/technology-stack.md) for the reasoning behind specific tool choices at the foundation layer.

---

## Baseline Practices

**Version control is mandatory**, using Git, for anything that will be maintained for more than a single session of work.

**Commits follow [Conventional Commits](https://www.conventionalcommits.org/)**: `type(scope): summary`, where type is one of `feat`, `fix`, `docs`, `refactor`, `chore`, `test`, `ci`. This is not stylistic preference — it is what makes automated changelogs and history search possible years from now.

**Every non-trivial decision that is hard to reverse gets an ADR**, following the [Decision Framework](../framework/decision-framework.md), in the repository it affects.

**Readable over clever.** Code is read far more often than it is written. A solution that requires a paragraph of explanation to justify its cleverness should usually be the simpler, more obvious one instead.

**Dependencies are a liability, not a convenience.** Every dependency added is a promise that someone will keep it updated and understand what it does. Prefer the standard library and well-established, actively maintained packages over convenience wrappers.

**Secrets never enter version control.** No credentials, tokens, or private keys in any commit, ever — including in commit history that gets amended later. Use environment variables or a secrets manager appropriate to the initiative's stack.

**Tests exist for behavior that must not silently break.** Not every line needs a test; the logic a user or another system depends on does.

---

## Reviews

Changes to shared, Foundation-adjacent code (anything another initiative or product depends on) go through review before merging, even when the author is the sole contributor at the time — self-review with a delay (reading the diff again after stepping away) is an acceptable substitute for a second person, but it is not skipped.

---

## Security

Baseline expectations, regardless of stack:

- Validate and sanitize input at system boundaries; do not trust data because it came from "our own" frontend.
- Keep dependencies patched; do not let known vulnerabilities sit unaddressed because "it still works."
- Least privilege by default for any credential, token or service account.
- Treat OWASP Top 10-class issues (injection, broken access control, insecure deserialization, and similar) as defects to fix immediately, not backlog items.

---

## What This Standard Does Not Dictate

This standard does not mandate a specific language, framework, cloud provider, or architectural pattern — those are Product Framework-level decisions made per initiative, following the principles in [Technology Stack](../architecture/technology-stack.md). It mandates the discipline around whatever is chosen.

---

## Related Documents

- [Technology Stack](../architecture/technology-stack.md) — the foundation-layer tool choices this standard's principles are drawn from
- [Decision Framework](../framework/decision-framework.md) — when an engineering decision needs an ADR
- [GitHub Standard](github-standard.md) — how this standard is enforced in practice through repository conventions
- [Documentation Standard](documentation-standard.md) — the equivalent standard for documentation
