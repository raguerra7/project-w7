# Scripts

Small, self-contained maintenance scripts for this repository. Nothing here runs as a service or requires ongoing maintenance beyond the script itself — if a future need grows past that, it belongs in an initiative's own repository instead, per [Technology Stack](../docs/architecture/technology-stack.md).

- `new-adr.sh` — scaffolds a new ADR from `docs/adr/template.md`, numbered sequentially. Usage: `scripts/new-adr.sh "short decision title"`.
