# ADR-0002: Arquitetura de repositório em camadas

Situação: Aceito

Date: 03/08/2026

Owner: Rafael da Silva Guerra

---

## Contexto

`project-w7` precisa manter a filosofia, identidade, governança e estrutura compartilhada por todas as iniciativas atuais e futuras, ao mesmo tempo que é onde WarTips (e tudo o que vier depois dele) está registrado. À medida que mais iniciativas são adicionadas, uma coleção plana e não estruturada de documentos torna-se ambígua sobre o que depende de quê e o que é seguro alterar sem afetar tudo o que está a jusante dela — o modo de falha exato descrito em [Visão Geral da Arquitetura](../architecture/overview.md).

## Decisão

O repositório é organizado em camadas ordenadas — Fundação, Identidade, Governança, Estrutura, Iniciativas, com Produtos e Experiências residentes no próprio repositório de cada iniciativa — onde cada camada pode depender apenas das camadas acima dela, nunca abaixo dela. Concretamente: `docs/foundations/`, `docs/identity/`, `docs/framework/` (que inclui governança), `docs/initiatives/`, apoiado por `docs/architecture/`, `docs/standards/`, `docs/adr/` e `docs/roadmap/` como camadas de suporte usadas em todo o processo.

## Alternativas consideradas

- **Organizar primeiro por iniciativa e depois por preocupações compartilhadas** (por exemplo, `wartips/`, `homelab/`, cada um com sua própria cópia de filosofia e padrões). Rejeitado: garante duplicação e desvio no momento em que há mais de uma iniciativa — o oposto de “um fato, uma casa” em [Arquitetura do Conhecimento](../architecture/knowledge-architecture.md).
- **Uma única pasta `docs/` plana sem camadas.** Rejeitado: funciona enquanto o repositório é pequeno, falha silenciosamente à medida que cresce — nada indica quais documentos são seguros para edição casual e quais se propagam em cada iniciativa.
- **Repositórios separados por camada** (um repositório `w7-foundation`, um repositório `w7-framework`, etc.). Rejeitado: adiciona sobrecarga de referência entre repositórios desproporcional ao tamanho real desses documentos; pastas dentro de um repositório são suficientes nesta escala e podem ser divididas posteriormente, se isso mudar.

## Consequências

Qualquer colaborador pode determinar o raio de explosão de uma alteração pela pasta em que ela está, sem ler primeiro todos os outros documentos. Novas iniciativas têm um local inequívoco para serem registradas ([Initiative Framework](../framework/initiative-framework.md)) sem afetar a Fundação. O custo é que essa estrutura deve ser mantida deliberadamente – um documento colocado na camada errada (por exemplo, conteúdo específico da iniciativa vazando para `docs/foundations/`) prejudica todo o modelo, então o posicionamento é verificado como parte da [revisão do Padrão de Documentação](../standards/documentation-standard.md).

## Relacionados

- [Visão geral da arquitetura](../architecture/overview.md)
- [Arquitetura do Conhecimento](../architecture/knowledge-architecture.md)
- [Framework de Iniciativas](../framework/initiative-framework.md)
