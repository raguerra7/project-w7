# ADR-0003: Modelo de Governança de Iniciativa

Situação: Aceito

Date: 03/08/2026

Owner: Rafael da Silva Guerra

---

## Contexto

W7 foi projetado para funcionar quer continue sendo uma marca pessoal, tornando-se uma prática de consultoria, uma empresa SaaS, uma empresa de educação ou uma organização de código aberto ([Constituição](../foundations/constitution.md), Artigo VII). WarTips existe hoje como a primeira iniciativa; mais se seguirão. Era necessário um modelo de governação para saber quanta autonomia uma iniciativa tem, e quem pode mudar as camadas partilhadas das quais depende, antes que uma segunda iniciativa ou um segundo contribuidor torne a falta de um modelo um problema real e contestado, em vez de um problema teórico.

## Decisão

As iniciativas têm total autonomia sobre os seus próprios produtos, voz e escolhas tecnológicas, herdando as camadas Fundamentos, Identidade e Framework por referência e não por cópia. Eles não têm autoridade unilateral para alterar essas camadas herdadas — tais mudanças passam pelo [Framework de Decisão](../framework/decision-framework.md), independentemente da iniciativa que as propõe. A autoridade é atribuída por camada em [Governança](../framework/governance.md), nomeando explicitamente o fundador como o atual detentor da autoridade em cada camada, em vez de deixá-la implícita.

## Alternativas consideradas

- **Independência total da iniciativa, sem governação partilhada.** Rejeitado: isto é indistinguível de iniciativas que não fazem realmente parte de um ecossistema e reintroduz o problema de duplicação que o ADR-0002 existe para evitar.
- **Aprovação centralizada necessária para cada decisão em nível de iniciativa, incluindo detalhes do produto.** Rejeitado: isso não ultrapassa um único fundador e contradiz o Artigo V da Constituição, que concede às iniciativas liberdade para desenvolver seus próprios produtos e linguagem visual.
- **Deixar a governança não declarada até que um segundo contribuidor a torne necessária.** Rejeitado: um ponto único de autoridade não declarado não pode ser transferido, delegado ou fundamentado por alguém que se junte mais tarde — o custo de anotá-lo agora é pequeno, e o custo de não tê-lo quando for necessário não é.

## Consequências

Um futuro líder de iniciativa sabe exatamente o que pode decidir unilateralmente versus o que requer passar pela [Framework de Decisão](../framework/decision-framework.md). Trazer um colaborador ou uma segunda iniciativa não requer a invenção de um modelo de governança sob pressão de tempo — [Governança](../framework/governance.md) já tem uma função para eles. O custo é que hoje, com um único fundador, parte desta estrutura ainda não é resistente; ele é aceito como documentação para um estado em que W7 foi projetado para crescer, e não como evidência de que essa complexidade seja necessária hoje.

## Relacionados

- [Governança](../framework/governance.md)
- [Framework de Iniciativas](../framework/initiative-framework.md)
- [Constituição](../foundations/constitution.md), Artigos V e VII
