# Typography

Version: 1.0.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Purpose

This document defines W7's type roles for consistent, readable communication.

---

## Context

Typography must support engineering precision and long-form learning without creating a gamer or novelty aesthetic. The system favors widely available fonts and resilient fallbacks.

---

## Type Roles

| Role | Preferred family | Fallbacks | Use |
|---|---|---|---|
| Interface and prose | Inter | system-ui, Arial, sans-serif | Headings, body copy, navigation, labels |
| Apple-native interface | SF Pro | system-ui, sans-serif | Native Apple surfaces where licensed and available |
| Technical | IBM Plex Mono | ui-monospace, monospace | Code, commands, identifiers, compact technical labels |

## Rules

- Use no more than two families in one artifact: one sans-serif and, when needed, one monospace.
- Establish hierarchy through size, weight, and space before color.
- Body copy must remain comfortable for sustained reading; avoid condensed faces and all-caps paragraphs.
- Monospace denotes technical content, not general emphasis.
- Use platform fallbacks when the preferred family is unavailable; never delay access to content for a webfont.

---

## Related Documents

- [Color System](color-system.md) — contrast and emphasis roles
- [Visual Language](visual-language.md) — layout and composition
- [Voice and Tone](voice-and-tone.md) — verbal hierarchy and expression
