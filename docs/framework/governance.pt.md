# Governança

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento define quem tem autoridade sobre cada camada do W7 e como se espera que essa autoridade mude à medida que o ecossistema cresce de uma pessoa para uma equipe, uma empresa ou uma comunidade de código aberto.

---

## Contexto

É fácil errar em duas direcções opostas sobre uma governação escrita para um único fundador: formalizar excessivamente um processo que hoje é apenas o julgamento de uma pessoa, ou subespecificá-lo de tal forma que não consegue sobreviver a essa pessoa recuar, delegar ou trazer colaboradores. Este documento visa a estrutura mínima que ainda é verdadeira hoje e ainda correta se W7 crescer.

---

## Autoridade por camada

A autoridade segue o modelo de camada em [Visão geral da arquitetura](../architecture/overview.md): quanto mais alta a camada, mais restrita e deliberada é a autoridade para alterá-la.

| Camada | Quem pode propor alterações | Quem aprova |
|---|---|---|
| Fundamentos | Qualquer pessoa contribuindo para W7 | Fundador (hoje); um administrador designado dos Fundamentos no futuro |
| Identidade | Qualquer pessoa contribuindo para W7 | Fundador ou quem detém a propriedade da marca |
| Governança | Qualquer pessoa contribuindo para W7 | Fundador; requer um ADR |
| Framework | Qualquer pessoa contribuindo para W7 | Fundador ou mantenedor do framework |
| Iniciativas | Mantenedores da iniciativa | Liderança da iniciativa, dentro dos limites do Framework |
| Produtos | Mantenedores de produtos | Líder de produto/iniciativa |

Um líder de iniciativa tem autoridade total sobre os produtos e experiências de sua própria iniciativa. Eles não têm autoridade para alterar unilateralmente as camadas de Fundamentos, Identidade ou Framework — essas mudanças passam pela [Framework de Decisão](decision-framework.md) porque afetam todas as outras iniciativas também.

---

## Modelo de hoje

No momento em que este livro foi escrito, W7 tinha um único fundador que detém autoridade em todas as camadas. Isto é afirmado explicitamente e não implícito, porque um ponto único de autoridade não declarado é indistinguível de um sistema sem qualquer governação – e ambos falham da mesma forma se essa pessoa não estiver disponível.

A tabela acima foi escrita para a organização que W7 foi projetada para se tornar, não apenas a que é hoje, de modo que adicionar um segundo colaborador ou líder de iniciativa seja uma questão de atribuir uma função que já existe neste documento, e não inventar uma sob pressão.

---

## Alterando a Constituição

A [Constituição](../foundations/constitution.md) é o único documento com um nível de exigência mais alto do que a tabela acima indica. Uma emenda constitucional:

1. Deve ser proposta por escrito, indicando quais artigos serão alterados e por quê.
2. Deve ser registrado como ADR, por menor que pareça.
3. Entra em vigor somente após o fundador (ou, no futuro, qualquer órgão de governança que detenha a autoridade dos Fundamentos) aprová-lo explicitamente.
4. Nunca acontece silenciosamente como efeito colateral de outra mudança.

---

## Novas iniciativas e novos colaboradores

Trazer uma nova iniciativa ou um novo contribuidor com autoridade de governação é em si uma decisão do Tipo 2 ou do Tipo 3 no âmbito do [Framework de Decisão](decision-framework.md), e espera-se que as tabelas deste documento sejam atualizadas quando isso acontecer — este documento foi escrito para ser editado, e não tratado como imutável como a Constituição é.

---

## Documentos Relacionados

- [Constituição](../foundations/constitution.md), Artigo VI — as questões que toda decisão de governança deve responder
- [Framework de Decisão](decision-framework.md) — o processo sobre o qual este documento atribui autoridade
- [Framework de Iniciativas](initiative-framework.md) — como os líderes de iniciativa adquirem sua autoridade em primeiro lugar
- [Visão geral da arquitetura](../architecture/overview.md) — a autoridade do modelo de camada é organizada em torno
