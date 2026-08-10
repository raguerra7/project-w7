# Visão Geral da Arquitetura

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento explica como a W7 é estruturada como sistema, independentemente de uma iniciativa ou produto específico.

---

## Contexto

A W7 não é uma única base de código. Sua arquitetura organiza decisões, responsabilidades e herança para que iniciativas diferentes compartilhem o mesmo fundamento sem se misturarem ou divergirem.

A pergunta central é: **quando algo muda, o que também precisa mudar e o que deve permanecer protegido?**

---

## Modelo de Camadas

```text
Fundamentos → Identidade → Governança → Framework → Iniciativas → Produtos → Experiências → Aprendizado Contínuo
```

| Camada | Responde | Local canônico | Frequência de mudança |
|---|---|---|---|
| Fundamentos | Por que a W7 existe? | `docs/foundations/` | Raramente |
| Identidade | Como a W7 se apresenta? | `docs/identity/` | Ocasionalmente |
| Governança | Quem decide e como? | `docs/framework/governance.md` | Ocasionalmente |
| Framework | Como iniciativas e produtos são criados? | `docs/framework/` | Conforme os padrões amadurecem |
| Iniciativas | O que está sendo construído? | `docs/initiatives/` | Frequentemente |
| Produtos | O que é entregue às pessoas? | Repositórios das iniciativas | Frequentemente |
| Experiências | O que as pessoas percebem e utilizam? | Superfícies dos produtos | Continuamente |
| Aprendizado | O que aprendemos e onde isso retorna? | ADRs e retrospectivas | Continuamente |

Uma mudança na parte inferior não deve exigir uma mudança na Constituição. Mudanças no topo são raras, deliberadas e naturalmente repercutem nas camadas inferiores.

## Herança, Não Duplicação

Cada iniciativa herda Fundamentos e Identidade por referência, não por cópia. Ela pode estender o que recebe — voz, expressão visual ou decisões de produto — desde que não contradiga a Foundation.

## Responsabilidade deste Repositório

`project-w7` contém Fundamentos, Identidade, Governança, Framework e o registro de Iniciativas. Não contém código de produtos, notas pessoais ou conteúdo aplicável a apenas uma iniciativa.

---

## Documentos Relacionados

- [Topologias](topology.md) — versão visual desta arquitetura
- [Arquitetura do Conhecimento](knowledge-architecture.md) — organização da documentação
- [Stack de Tecnologia](technology-stack.md) — ferramentas desta arquitetura
- [Framework de Iniciativas](../framework/initiative-framework.md) — criação de novas iniciativas
- [Constituição](../foundations/constitution.md) — camada herdada por todas as demais
