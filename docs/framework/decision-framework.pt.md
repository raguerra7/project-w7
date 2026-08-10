# Estrutura de decisão

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento define como as decisões são tomadas dentro do W7, para que os julgamentos sejam consistentes mesmo quando as pessoas que os tomam, ou o número de pessoas envolvidas, mudam ao longo do tempo.

---

## Contexto

Um único fundador pode ter todo um processo de tomada de decisão em mente e nunca perceber que se trata de um processo. Isso deixa de ser verdade no momento em que uma segunda pessoa, um colaborador ou uma futura equipe precisa tomar uma decisão da mesma forma que Rafael faria. Escrever o processo agora, embora ainda seja simples, é mais barato do que reconstruí-lo mais tarde, sob pressão.

---

## As Quatro Perguntas

A [Constituição](../foundations/constitution.md), Artigo VI, estabelece quatro questões que qualquer decisão significativa deve responder:

1. **Por que isso deveria existir?**
2. **Quem se beneficia?**
3. **Permanecerá valioso ao longo do tempo?**
4. **Isso fortalece o ecossistema W7?**

Se alguma resposta for genuinamente não, a decisão deve ser reconsiderada antes de ser tomada, e não depois de ser enviada.

Este documento operacionaliza essas quatro questões em algo utilizável na prática.

---

## O que é considerado "significativo"

Nem toda decisão precisa dessa estrutura. As escolhas diárias de implementação dentro de uma iniciativa, não. Uma decisão passa por esta estrutura quando realiza pelo menos uma das seguintes opções:

- Altera as camadas de Fundação, Identidade, Governança ou Estrutura
- Cria uma nova iniciativa ou descontinua uma existente
- Introduz uma dependência, ferramenta ou convenção que outras iniciativas deverão herdar
- Não pode ser facilmente revertido dentro de um ciclo de iteração normal

Em caso de dúvida, escreva um ADR. Anotar é a maneira mais barata de descobrir se uma decisão foi realmente significativa.

---

## O Processo

1. **Declare a decisão como uma pergunta**, não como uma conclusão já alcançada. "O WarTips deveria adotar um nível pago?" não "WarTips terá um nível pago."
2. **Responder às quatro questões constitucionais** explicitamente, por escrito.
3. **Liste as alternativas consideradas**, incluindo “não fazer nada”. Uma decisão sem alternativas listadas normalmente não foi examinada suficientemente de perto.
4. **Registre a decisão como uma ADR** se ela atender aos critérios de significância acima, usando o [Modelo ADR ](../adr/template.md).
5. **Deixe a decisão respirar.** Decisões significativas e difíceis de reverter não são tomadas na mesma sessão em que são propostas, quando isso for prático.

---

## Reversibilidade como propriedade de primeira classe

Cada decisão é classificada de acordo com o custo de reverter:| Classe | Significado | Exemplo |
|---|---|---|
| Tipo 1 | Facilmente reversível | Escolha de um linter, estrutura de um documento |
| Tipo 2 | Reversível com custo real | Uma convenção-quadro adotada por múltiplas iniciativas |
| Tipo 3 | Efetivamente irreversível | Uma mudança na Constituição, descontinuando a identidade de uma iniciativa |

As decisões do tipo 1 devem ser tomadas rapidamente e sem cerimônia. As decisões do tipo 3 merecem todo o processo acima, deliberadamente retardado. Tratar uma decisão do Tipo 1 como uma decisão do Tipo 3 é tanto uma falha de julgamento quanto o contrário.

---

## Desacordo

W7 foi projetado para escalar de uma pessoa para muitas. Quando mais de uma pessoa está envolvida numa decisão e discordam, o desempate é a resposta que melhor satisfaz as quatro questões constitucionais – não a antiguidade, nem quem falou primeiro. Se o desacordo for sobre a própria Constituição, será resolvido através da [Governança](governance.md), e não através deste quadro.

---

## Documentos Relacionados

- [Constituição](../foundations/constitution.md), Artigo VI — as quatro questões que este quadro operacionaliza
- [Governance](governance.md) — quem detém autoridade de tomada de decisão em cada camada
- [ADR Template](../adr/template.md) — como uma decisão significativa é registrada permanentemente
- [Initiative Framework](initiative-framework.md) e [Product Framework](product-framework.md) – os dois locais mais comuns onde esta estrutura é aplicada
