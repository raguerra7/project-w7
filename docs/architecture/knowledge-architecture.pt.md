# Arquitetura do Conhecimento

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento define como o conhecimento é organizado, onde reside e como é evitado a decadência. W7 é, estruturalmente, uma organização de conhecimento antes de qualquer outra coisa – esta é a arquitetura desse conhecimento.

---

## Contexto

Os sistemas de documentação falham de forma previsível: o mesmo facto é escrito em três locais e apenas um é actualizado; ninguém sabe qual documento é oficial; os rascunhos antigos são indistinguíveis das orientações atuais; e eventualmente as pessoas deixam de confiar na documentação e passam a perguntar diretamente umas às outras, o que não escala e não sobrevive a quem sai.

Este documento existe para evitar esse resultado, deliberadamente, antes que o repositório cresça o suficiente para que isso aconteça por acidente.

---

## Um fato, uma casa

Cada fato sobre W7 possui exatamente um documento canônico. Todos os outros documentos que precisam desse fato **vinculam-se a ele** em vez de reafirmá-lo.

Exemplos de lares canônicos já estabelecidos:

| Fato | Início canônico |
|---|---|
| Por que W7 existe, sua missão e visão | [Constituição](../foundations/constitution.md) |
| O que significa “sucesso” | [Legado](../foundations/legacy.md) |
| Como são criadas as iniciativas | [Framework de Iniciativas](../framework/initiative-framework.md) |
| Como as decisões são tomadas | [Framework de Decisão](../framework/decision-framework.md) |
| Por que foi feita uma escolha arquitetônica específica | O [ADR](../adr/template.md) |

Na dúvida sobre escrever algo novo ou vincular a algo existente, a resposta é: pesquise primeiro, vincule se existir, escreva apenas se realmente não existir.

---

## Dois repositórios, um limite

O conhecimento sobre W7 reside em exatamente dois lugares e eles têm empregos diferentes.

**GitHub (este repositório e o repositório de cada iniciativa)** é a fonte de verdade oficial, versionada e revisável. Se não estiver em GitHub, não é oficial – sem exceções, independentemente de quão completa ou correta uma nota em outro lugar possa ser.

**Obsidian (Rafael OS)** é gerenciamento de conhecimento pessoal: rascunhos, ideias incompletas, reflexões privadas, notas de trabalho que ainda não estão prontas para serem afirmações nas quais qualquer outra pessoa possa confiar.

Obsidian nunca substitui GitHub. No momento em que uma nota em Obsidian é estável o suficiente para que outra pessoa possa agir razoavelmente sobre ela, ela se transforma em um documento Markdown no repositório GitHub apropriado. Detalhes sobre esse limite estão em [Limites de informação](../standards/information-boundaries.md).

---

## Status, não silêncioCada documento neste repositório declara `Status` em seu cabeçalho (`Draft`, `Active`, `Deprecated`, `Superseded`). Um documento sem status é um defeito, não uma omissão estilística — consulte a [Padrão de Documentação](../standards/documentation-standard.md).

Os documentos `Deprecated` e `Superseded` não são excluídos. A história é mantida e vinculada a tudo o que a substituiu, da mesma forma que um ADR nunca é reescrito, apenas substituído por um novo. Excluir um documento exclui o raciocínio por trás de decisões anteriores, que é exatamente o conhecimento que uma organização com 10 anos de existência mais precisa.

---

## Descoberta acima da inteligência

Os documentos são organizados pela camada à qual pertencem (consulte [Visão Geral da Arquitetura](overview.md)), e não por equipe, data ou autor. Um novo leitor deverá ser capaz de encontrar qualquer documento perguntando "a qual camada ele pertence?" em vez de lembrar quem o escreveu ou quando.

Existem referências cruzadas na parte inferior de cada documento sob o título `Related Documents`, de modo que nenhum documento seja uma ilha acessível apenas a partir do README.

---

## Documentos Relacionados

- [Visão geral da arquitetura](overview.md) — o modelo de camada que esta estrutura de conhecimento suporta
- [Padrão de Documentação](../standards/documentation-standard.md) — as regras concretas que todo documento deve seguir
- [Limites de informação](../standards/information-boundaries.md) — o limite GitHub / Obsidian em detalhes
- [ADR Template](../adr/template.md) — como uma decisão se torna conhecimento permanente
