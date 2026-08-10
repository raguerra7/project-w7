# Color System

Version: 1.0.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Purpose

This document defines the canonical W7 color roles and their usage boundaries.

---

## Context

W7 needs a restrained, reproducible palette before visual assets are produced. Colors are defined by role so implementations can meet accessibility needs without treating a decorative shade as immutable.

---

## Core Palette

| Role | Reference | Hex | Use |
|---|---|---|---|
| Matte Black | Primary | `#111111` | Primary background, dark wordmark, strong text |
| White | Canvas | `#FFFFFF` | Light background, reversed text, negative space |
| W7 Gold | Signature | `#C8A45D` | Deliberate emphasis, keylines, selected brand details |
| Cloud Blue | Technical accent | `#3977D6` | Cloud-related diagrams and technical categorization |
| AI Violet | Technical accent | `#7557C8` | AI-related diagrams and technical categorization |

## Rules

- Black, white, and gold form the W7 core expression.
- Gold is an accent, not a body-text color or a substitute for information hierarchy.
- Blue and violet communicate technical categories only when the distinction has meaning.
- Color never carries meaning alone; pair it with text, shape, or an icon.
- Every implementation must meet WCAG 2.2 AA contrast for normal text and interactive states.
- Gradients, neon effects, and simulated chrome are not part of the core language.

## Initiative Use

Initiatives may define their own palettes. W7 endorsement should use the core palette and must remain visually distinct from initiative-specific accents.

---

## Related Documents

- [Visual Language](visual-language.md) — composition and imagery rules
- [Typography](typography.md) — the companion type system
- [Brand Architecture](brand-architecture.md) — initiative autonomy and endorsement
