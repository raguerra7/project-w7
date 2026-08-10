# Modelo ADR

Version: 1.0.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este é o modelo que cada registro de decisão de arquitetura (ADR) em W7 segue. Copie este arquivo, renomeie-o como `NNNN-short-decision-title.md` usando o próximo número sequencial e preencha todas as seções antes de mesclar.

---

## Contexto

As ADR existem para responder a uma pergunta para um futuro leitor: *porque é que isto foi decidido, dado o que se sabia na altura?* Uma boa ADR é honesta sobre as alternativas que foram rejeitadas e porquê, não apenas sobre a conclusão alcançada. Está escrito quando a decisão é tomada, nunca preenchido para justificar uma decisão após o fato.

---

## O que se qualifica para um ADR

De acordo com a [Framework de Decisão](../framework/decision-framework.md): qualquer coisa que altere um documento da camada de Fundamentos, Identidade, Governança ou Framework, crie ou retire uma iniciativa, introduza uma convenção que outras iniciativas herdarão ou que seja caro para reverter.

---

## Modelo

```markdown
# ADR-NNNN: <Short, specific title>

Status: Proposed | Accepted | Superseded by ADR-XXXX | Deprecated

Date: YYYY-MM-DD

Owner: <name>

---

## Context

What situation made this decision necessary? What constraints applied?

## Decision

What was decided, stated as a plain sentence, not a question.

## Alternatives Considered

- Alternative A — why it was not chosen
- Alternative B — why it was not chosen
- Doing nothing — why that was not sufficient

## Consequences

What becomes easier because of this decision? What becomes harder or
is given up? What does this commit future initiatives to?

## Related

Links to the documents or ADRs this decision affects or depends on.
```

---

## Ciclo de vida

Um ADR nunca é editado para alterar sua conclusão depois de ser `Accepted`. Se as circunstâncias mudarem, um novo ADR é escrito, marcado como `Superseded by ADR-XXXX`, e o antigo é atualizado apenas para adicionar essa linha de status – seu raciocínio original permanece intacto como um registro histórico, de acordo com [Arquitetura do Conhecimento](../architecture/knowledge-architecture.md).

---

## Documentos Relacionados

- [Framework de Decisão](../framework/decision-framework.md) — quando este modelo é usado
- [ADR-0001](0001-github-as-source-of-truth.md), [ADR-0002](0002-layered-repository-architecture.md), [ADR-0003](0003-initiative-governance-model.md) — as três primeiras decisões registradas usando este modelo
