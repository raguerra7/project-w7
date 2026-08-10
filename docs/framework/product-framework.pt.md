# Framework de Produtos

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento define o que é um produto dentro de W7, como ele difere de uma iniciativa e como um novo produto é criado dentro de uma iniciativa existente.

---

## Contexto

Uma iniciativa é um propósito. Um produto é algo concreto construído para atender a esse propósito – um curso, uma ferramenta, um software, um guia escrito, um serviço. Uma iniciativa pode ter vários produtos, ou nenhum ainda, ou produtos que vão e vêm enquanto a iniciativa em si continua. Sem essa distinção, "deve ser uma iniciativa própria ou apenas algo enviado pelo WarTips" torna-se um argumento recorrente e não resolvido.

---

## Produto vs. Iniciativa

| | Iniciativa | Produto |
|---|---|---|
| Respostas | Para que serve esse esforço? | O que realmente construímos? |
| Vida útil | Longa vida, pode durar anos | Muitas vezes mais curto; poderá ser aposentado independentemente da iniciativa |
| Exemplo | WarTips | Uma série, ferramenta ou curso específico de guias WarTips |
| Governado por | [Framework de Iniciativas](initiative-framework.md) | Este documento |

Um produto sempre pertence exatamente a uma iniciativa. Se algo parece não pertencer a nenhuma das iniciativas existentes, isso é um sinal para avaliá-lo como uma *nova iniciativa*, e não como um produto órfão.

---

## Criando um novo produto

1. **Identifique a iniciativa proprietária.** Um produto sem uma iniciativa não é criado — ou ele se enquadra em uma, ou a [Framework de Iniciativas](initiative-framework.md) é usada primeiro.
2. **Declarar o problema que ela resolve para o público da iniciativa**, em termos concretos, e não aspiracionais.
3. **Responda às quatro perguntas da Constituição** (Artigo VI) no nível do produto: esta é geralmente uma aprovação mais leve do que a versão no nível da iniciativa, mas não é ignorada.
4. **Escolha sua tecnologia deliberadamente**, seguindo os princípios em [Technology Stack](../architecture/technology-stack.md) em vez de adotar o padrão de tendência.
5. **Registre-o** na entrada da iniciativa proprietária em `project-w7` e, em seguida, mantenha a documentação detalhada do produto no repositório ou na seção de documentação da própria iniciativa. WarTips atualmente não possui nenhum produto formalmente registrado.

---

## O que um produto herda

Um produto herda tudo o que sua iniciativa herda (consulte [Framework de Iniciativas](initiative-framework.md)), além de quaisquer convenções que sua iniciativa tenha estabelecido adicionalmente. Ele não pode ignorar o [Padrão de Engenharia](../standards/engineering-standard.md) ou o [Padrão de Documentação](../standards/documentation-standard.md)] porque é "apenas uma coisa pequena" - coisas pequenas são exatamente o que se acumula em um ecossistema insustentável se não for padronizado.

---

## Ciclo de vida do produtoOs produtos passam por quatro estágios, e a documentação de cada produto deve indicar em qual estágio ele se encontra:

| Estágio | Significado |
|---|---|
| `Exploring` | Sendo validado; pode ser descartado sem cerimônia |
| `Active` | Construída, mantida e foco atual da iniciativa |
| `Maintained` | Estável, sem desenvolvimento ativo, mas apoiado |
| `Retired` | Não é mais mantido; documentação guardada para continuidade histórica |

A descontinuação de um produto não exige a desativação de sua iniciativa, e a desativação de uma iniciativa não apaga o registro dos produtos que ele enviou — consulte [Legado](../foundations/legacy.md).

---

## Documentos Relacionados

- [Framework de Iniciativas](initiative-framework.md) — a camada à qual um produto sempre pertence
- [Framework de Decisão](decision-framework.md) — como as decisões significativas do produto são avaliadas
- [Padrão de Engenharia](../standards/engineering-standard.md) — as regras concretas de engenharia que cada produto segue
- [WarTips](../initiatives/wartips/README.md) — onde os produtos próprios de WarTips são rastreados
