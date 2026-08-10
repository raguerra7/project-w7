# Logo System

Version: 1.0.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Purpose

This document defines the canonical W7 production marks, their intended use, and the constraints that preserve recognition and legibility.

---

## Context

The Visual Language established a circular W7 monogram inspired by balance. This document converts that direction into versioned SVG assets suitable for documentation, interfaces, favicons, and presentation surfaces.

---

## Canonical Marks

### Symbol

![W7 symbol](../assets/brand/w7-symbol.svg)

The symbol is the preferred compact mark. Its matte-black circle expresses continuity; the white W and gold 7 meet at the center without reproducing a yin-yang symbol.

### Horizontal Logo — Light Background

![W7 logo for light backgrounds](../assets/brand/w7-logo-dark.svg)

Use on white or light neutral surfaces.

### Horizontal Logo — Dark Background

<div style="background:#111111;padding:1rem;border-radius:.5rem">
  <img src="../../assets/brand/w7-logo-light.svg" alt="W7 logo for dark backgrounds">
</div>

Use on matte black or other sufficiently dark surfaces.

## Files

| Asset | Purpose |
|---|---|
| `w7-symbol.svg` | Avatar, application mark, endorsement, compact placement |
| `w7-logo-dark.svg` | Horizontal logo on light backgrounds |
| `w7-logo-light.svg` | Horizontal logo on dark backgrounds |
| `favicon.svg` | Browser and small interface icon |
| `w7-social-card.svg` | Repository and presentation preview |

## Clear Space and Minimum Size

- Keep clear space around the symbol equal to at least one quarter of its diameter.
- Do not render the symbol below 24 CSS pixels; use the favicon asset at smaller browser-controlled sizes.
- Do not render the horizontal logo below 120 CSS pixels wide.

## Rules

- Do not stretch, rotate, outline, recolor, or rearrange the mark.
- Do not remove the black circular field from the symbol.
- Do not replace W7 Gold with a gradient or simulated metallic effect.
- Do not place the mark on a background that weakens its contrast.
- Initiative marks remain independent; W7 appears as an endorsement, not as a forced prefix.

## Accessibility

All production SVGs contain an accessible title, description, or label. Nearby text should identify W7 when the mark alone would be ambiguous.

---

## Related Documents

- [Visual Language](visual-language.md) — design principles behind the mark
- [Color System](color-system.md) — canonical colors
- [Typography](typography.md) — wordmark typography
- [Brand Architecture](brand-architecture.md) — endorsement model
- [ADR-0010](../adr/0010-adopt-w7-production-identity-assets.md) — approval of this asset set
