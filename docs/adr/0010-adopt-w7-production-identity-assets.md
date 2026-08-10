# ADR-0010: Adopt W7 Production Identity Assets

Status: Accepted

Date: 2026-08-09

Owner: Rafael da Silva Guerra

---

## Context

W7 Foundation v1.0 defined the visual direction, palette, typography, and endorsed-brand model but deliberately stopped short of production logo files. The public documentation now needs a recognizable application mark, favicon, horizontal lockups, and social presentation asset that work across light and dark surfaces.

## Decision

Adopt the SVG asset set in `docs/assets/brand/` and the usage rules in the Logo System as W7's canonical production identity. The circular monogram combines a white W and gold 7 within a matte-black field, expressing balance without reproducing a yin-yang symbol. Black, white, and W7 Gold remain the only colors in the core mark.

## Alternatives Considered

- **Text-only W7 wordmark.** Rejected because it does not provide a distinctive compact application or favicon mark.
- **Literal yin-yang construction.** Rejected because the visual direction calls for conceptual influence, not reproduction.
- **Raster-first assets.** Rejected because SVG remains resolution-independent, accessible, inspectable, and versionable.
- **Separate marks for light and dark backgrounds.** Rejected for the symbol; only the horizontal wordmark color changes, preserving one recognizable core mark.

## Consequences

W7 gains a consistent production identity for documentation and future initiative endorsements. Changes to the symbol geometry, core colors, or relationship between symbol and wordmark require an Identity-layer decision and a superseding ADR. Initiative identities may remain distinct under the Brand Architecture.

## Related

- [Logo System](../identity/logo-system.md)
- [Visual Language](../identity/visual-language.md)
- [Color System](../identity/color-system.md)
- [Brand Architecture](../identity/brand-architecture.md)
