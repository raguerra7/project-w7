# Framework de Iniciativas

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento define o que é uma iniciativa, como uma nova é criada sob W7 e o que ela herda versus o que é livre para definir por si mesma.

---

## Contexto

WarTips é a primeira iniciativa. Não será o último. Sem uma estrutura escrita, cada nova iniciativa seria criada copiando tudo o que WarTips fizesse, incluindo erros, e o raciocínio por trás da estrutura de W7 teria que ser submetido a engenharia reversa todas as vezes. Este documento foi escrito para que a segunda, quinta e vigésima iniciativa possam ser iniciadas com a mesma clareza que a primeira.

---

## O que é uma iniciativa

Uma iniciativa é um esforço distinto – técnico, educacional, criativo ou outro – criado no ecossistema W7 para perseguir um propósito específico, com seu próprio público, sua própria cadência e, normalmente, seu próprio repositório.

Uma iniciativa **não** é uma entidade legal, um produto ou uma equipe. Pode eventualmente conter vários produtos (consulte [Product Framework](product-framework.md)) ou nenhum ainda. WarTips hoje é uma iniciativa única expressa por meio de documentação e conteúdo; pode evoluir para vários produtos posteriormente sem se tornar uma iniciativa diferente.

---

## O que toda iniciativa herda

Toda iniciativa, sem exceção, herda das camadas acima dela em [Visão Geral da Arquitetura](../architecture/overview.md):

- A [Constituição](../foundations/constitution.md), [Manifesto](../foundations/manifesto.md), [Vision](../foundations/vision.md) e [Legacy](../foundations/legacy.md) – por referência, nunca por cópia.
- O W7 [Identity](../identity/brand-architecture.md) rege como ele se relaciona com a marca master.
- O modelo [Governance](governance.md), pelo menos até ganhar escala suficiente para garantir a sua própria camada de governação específica para a iniciativa.
- Os padrões [Documentação](../standards/documentation-standard.md), [Engenharia](../standards/engineering-standard.md) e [GitHub](../standards/github-standard.md).

---

## O que cada iniciativa define para si mesma

- Nome, voz e expressão visual próprios, dentro dos limites da camada Identidade.
- Seu próprio público, cadência e escolha de produtos.
- Suas próprias escolhas tecnológicas, seguindo os princípios (não as ferramentas específicas) em [Technology Stack](../architecture/technology-stack.md).
- Repositório próprio, rastreador de problemas e processo de liberação quando seu trabalho assim o exigir.

Uma iniciativa que precisa contradizer um princípio da camada de base para ter sucesso é um sinal para levantar essa contradição através do [Framework de Decisão](decision-framework.md) – para não divergir silenciosamente.

---

## Criando uma nova iniciativa1. **Indique o propósito.** Um parágrafo: o que esta iniciativa existe para fazer e que nenhuma iniciativa existente já cobre.
2. **Responder às quatro questões da Constituição** (Artigo VI) para a iniciativa como um todo, e não apenas para um único produto dentro dela.
3. **Registre-o** em `docs/initiatives/<initiative-name>/README.md` neste repositório, usando `templates/initiative-template.md`. WarTips é o primeiro exemplo concluído, não o modelo em si.
4. **Adicione-o à tabela de ecossistema** na raiz `README.md` e ao [Roadmap](../roadmap/roadmap.md) se ainda não estiver ativo.
5. **Criar repositório próprio da iniciativa**, caso necessite, seguindo a [Norma GitHub](../standards/github-standard.md).

Uma nova iniciativa não precisa de permissão para existir experimentalmente – ela precisa desse processo antes de ser apresentada como parte oficial e ativa do ecossistema W7.

---

## Aposentando uma iniciativa

As iniciativas terminam. Isso é esperado, não uma falha (consulte [Legacy](../foundations/legacy.md)). Aposentar um significa: marcar sua entrada `Status: Retired` em `docs/initiatives/`, manter sua documentação em vez de excluí-la e registrar a decisão como ADR caso a iniciativa tenha algum dependente dela.

---

## Documentos Relacionados

- [Product Framework](product-framework.md) — como um produto específico dentro de uma iniciativa é criado
- [Framework de Decisão](decision-framework.md) — como resolver um conflito entre uma iniciativa e a Fundação
- `templates/initiative-template.md` — a estrutura de registro canônico na raiz do repositório
- [WarTips](../initiatives/wartips/README.md) — a primeira iniciativa registrada com este framework
- [Governance](governance.md) — como a autoridade sobre uma iniciativa é atribuída
