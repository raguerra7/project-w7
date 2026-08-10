# Padrão GitHub

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento define como GitHub é usado nos repositórios W7: ramificação, commits, problemas, pull requests e higiene do repositório. Torna concreta a afirmação feita em [Arquitetura do Conhecimento](../architecture/knowledge-architecture.md), que GitHub é a fonte oficial da verdade.

---

## Contexto

"GitHub é a fonte da verdade" só significa algo se for usado de forma consistente - as mesmas convenções de ramificação, o mesmo estilo de commit, as mesmas expectativas para o que é público versus privado. Este documento é o que torna essa afirmação operacional e não aspiracional.

---

## Convenções de repositório

- Todo repositório no ecossistema W7 possui um `README.md` em sua raiz informando sua finalidade e, se for uma iniciativa ou repositório de produto, a qual iniciativa ele pertence (de acordo com o [Initiative Framework](../framework/initiative-framework.md)).
- Cada repositório possui um `LICENSE` apropriado à abertura pretendida — escolhido deliberadamente, não deixado como padrão.
- `main` está sempre funcionando e em estado consistente com a documentação. O trabalho em andamento acontece nas filiais, não anunciado diretamente como concluído em `main`.

---

## Ramificação

- Os nomes das filiais descrevem o trabalho: `feature/<name>`, `fix/<name>`, `docs/<name>`, `refactor/<name>`.
- As sucursais de longa duração são a excepção e não o incumprimento — são um sinal de que uma decisão é suficientemente grande para necessitar primeiro de uma ADR ou deve ser dividida em pedaços mais pequenos.

---

## Confirmações

Os commits seguem [Conventional Commits](https://www.conventionalcommits.org/): `type(scope): summary`, correspondendo ao [Engineering Standard](engineering-standard.md). Quando o motivo não está claro no resumo e no registro de decisão ao redor, o corpo do commit explica *por que*, não apenas *o que* — a comparação já mostra o que mudou.

---

## Solicitações pull

- Uma descrição da solicitação pull indica o que mudou e por que, não apenas quais arquivos foram tocados.
- As alterações em `docs/foundations/`, `docs/identity/`, `docs/framework/`, `docs/architecture/` ou `docs/standards/` são mencionadas explicitamente na descrição, pois podem afetar todas as iniciativas que herdam delas.
- Uma solicitação pull é pequena o suficiente para ser revisada de uma só vez, sempre que o trabalho permitir.

---

## Problemas

Os problemas são usados para trabalhos monitorados e inacabados – não como um substituto para documentação. Uma vez resolvida, a *decisão* por trás de um problema significativo pertence a uma ADR ou à norma relevante, e não apenas a um tópico fechado que é difícil de descobrir posteriormente.

---

## VisibilidadeA visibilidade de um repositório (público/privado) é uma escolha deliberada, revista quando as circunstâncias mudam (veja a tabela de status na raiz `README.md`), e não um acidente de como foi criado pela primeira vez. Nada que viole o padrão [Limites de Informação ](information-boundaries.md) é tornado público por engano porque foi considerado privado por padrão.

---

## Automação

A integração contínua (Ações GitHub) é usada para verificações verificáveis e repetíveis — construção do site de documentação, execução de testes, linting — nunca como um substituto para as práticas de revisão na [Padrão de Engenharia](engineering-standard.md).

---

## Documentos Relacionados

- [Padrão de Documentação](documentation-standard.md) — o que todo documento deve conter antes de ser confirmado
- [Padrão de Engenharia](engineering-standard.md) — as práticas que esta norma concretiza especificamente em GitHub
- [Limites de informação](information-boundaries.md) — o que pertence e o que não pertence a um repositório público
- [Tecnologia Stack](../architecture/technology-stack.md) — por que GitHub foi escolhido e sua substituibilidade
