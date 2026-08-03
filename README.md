# W7

> Building meaningful initiatives through engineering, technology, design and education.

---

## Overview

W7 is an ecosystem created to design, build and evolve meaningful initiatives.

Rather than representing a single product, W7 provides the philosophy, identity, governance and design framework shared across every initiative created within its ecosystem.

Every initiative inherits the same principles while remaining free to evolve according to its own purpose.

---

## Purpose

Transform complexity into clarity.

We believe technology should empower people, knowledge grows when it is shared, and great systems are built with intention.

---

## Philosophy

Learning is continuous.

Teaching reinforces understanding.

Curiosity drives innovation.

Structure enables creativity.

Technology serves people.

Excellence comes through iteration.

Enjoy the Journey.

---

## Ecosystem

Current initiatives

| Initiative | Description | Status |
|------------|-------------|--------|
| [WarTips](docs/initiatives/wartips/README.md) | Technical knowledge sharing | 🟢 Active |

Future initiatives will inherit the W7 philosophy, identity system and governance model.

---

## Repository Structure

```text
docs/
├── foundations/     Why W7 exists — constitution, manifesto, vision, legacy
├── identity/        How W7 presents itself across initiatives
├── architecture/    How the ecosystem and its knowledge are structured
├── framework/       How new initiatives and products are created and governed
├── initiatives/     Active initiatives (WarTips and future ones)
├── standards/       How we write, build and ship
├── adr/             Why key decisions were made, and when
├── roadmap/         What comes next
└── founder/         The founder's personal intent behind W7
templates/           Reusable document and initiative templates
scripts/             Small maintenance scripts (e.g. new ADR scaffolding)
.github/             Issue/PR templates and CI workflows
```

This structure mirrors the W7 operating model: every layer inherits from the one above it.

```text
Foundation → Identity → Governance → Framework → Initiatives → Products → Experiences
```

---

## Documentation

The W7 documentation is organized into layers, each depending only on the layers above it.

### [Foundations](docs/foundations/constitution.md)

Defines why W7 exists: the [Constitution](docs/foundations/constitution.md), [Manifesto](docs/foundations/manifesto.md), [Vision](docs/foundations/vision.md) and [Legacy](docs/foundations/legacy.md). Nothing below this layer may contradict it.

### [Identity](docs/identity/brand-architecture.md)

Defines how W7 and its initiatives relate to each other as brands.

### [Architecture](docs/architecture/overview.md)

Defines how the ecosystem, its knowledge and its technology choices are structured.

### [Framework](docs/framework/governance.md)

Defines how new initiatives and products are created, evaluated and governed.

### [Initiatives](docs/initiatives/wartips/README.md)

Contains the active initiatives operating under W7, starting with WarTips.

### [Standards](docs/standards/documentation-standard.md)

Defines how documentation, engineering and AI-assisted work are done inside W7.

### [ADR](docs/adr/template.md)

Documents architectural and strategic decisions, and why they were made at the time.

### [Roadmap](docs/roadmap/roadmap.md)

Tracks what the ecosystem is building next.

### [Founder](docs/founder/README.md)

Preserves the personal intent, letter and origin story behind W7. Not operational.

---

## Status

| Property | Value |
|----------|-------|
| Stage | Foundation |
| Version | 0.1.0 |
| License | [MIT](LICENSE) |
| Visibility | Private |
| Documentation | MkDocs site builds from `docs/`; GitHub Pages requires public visibility (or a paid plan) to serve it — currently not published |

---

## Roadmap

Current priorities

- Publish the MkDocs documentation site when repository visibility and Pages access allow it
- Register WarTips' first product under the Product Framework
- Evaluate a second initiative to test the framework beyond WarTips
- Develop visual identity only when a concrete asset creates the need

---

Built with curiosity.

Enjoy the Journey.
