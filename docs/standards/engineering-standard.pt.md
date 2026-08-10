# Padrão de Engenharia

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento define as práticas básicas de engenharia que cada iniciativa e produto sob W7 deve seguir, independentemente da linguagem ou pilha específica escolhida.

---

## Contexto

O próprio `project-w7` não contém código de aplicativo, mas muitas iniciativas e produtos o farão. Sem uma linha de base compartilhada, cada esforço técnico reinventaria — ou ignoraria — a disciplina básica de engenharia de forma independente, e a qualidade dependeria inteiramente de quem a construísse. Este padrão trata deliberadamente de *práticas*, não de *tecnologias*; consulte [Technology Stack](../architecture/technology-stack.md) para obter o raciocínio por trás das escolhas de ferramentas específicas na camada base.

---

## Práticas básicas

**O controle de versão é obrigatório**, usando Git, para qualquer coisa que será mantida por mais de uma única sessão de trabalho.

**Commits seguem [Conventional Commits](https://www.conventionalcommits.org/)**: `type(scope): summary`, onde type é `feat`, `fix`, `docs`, `refactor`, `chore`, `test`, `ci`. Isso não é uma preferência estilística – é o que torna possíveis os registros de alterações automatizados e a pesquisa de histórico daqui a alguns anos.

**Toda decisão não trivial e difícil de ser revertida recebe um ADR**, seguindo o [Framework de Decisão](../framework/decision-framework.md), no repositório que ela afeta.

**Legível em vez de inteligente.** O código é lido com muito mais frequência do que escrito. Uma solução que requer um parágrafo de explicação para justificar a sua inteligência normalmente deveria ser a mais simples e mais óbvia.

**Dependências são uma responsabilidade, não uma conveniência.** Cada dependência adicionada é uma promessa de que alguém a manterá atualizada e entenderá o que ela faz. Prefira a biblioteca padrão e pacotes bem estabelecidos e mantidos ativamente em vez de embalagens convenientes.

**Os segredos nunca entram no controle de versão.** Nunca há credenciais, tokens ou chaves privadas em qualquer commit — inclusive no histórico de commits que é alterado posteriormente. Use variáveis ​​de ambiente ou um gerenciador de segredos apropriado à pilha da iniciativa.

**Existem testes para comportamentos que não devem ser interrompidos silenciosamente.** Nem toda linha precisa de um teste; a lógica da qual um usuário ou outro sistema depende.

---

## Avaliações

Mudanças no código compartilhado adjacente à Fundamentos (qualquer coisa de que outra iniciativa ou produto dependa) passam por revisão antes da merge, mesmo quando o autor é o único contribuidor no momento — a auto-revisão com atraso (ler a comparação novamente depois de se afastar) é um substituto aceitável para uma segunda pessoa, mas não é ignorada.

---

## Segurança

Expectativas básicas, independentemente da pilha:- Validar e higienizar entradas nos limites do sistema; não confie nos dados porque eles vieram do "nosso" frontend.
- Manter as dependências corrigidas; não deixe que vulnerabilidades conhecidas fiquem sem solução porque "ainda funciona".
- Privilégio mínimo por padrão para qualquer credencial, token ou conta de serviço.
- Trate os problemas da classe OWASP Top 10 (injeção, controle de acesso quebrado, desserialização insegura e similares) como defeitos a serem corrigidos imediatamente, e não como itens de backlog.

---

## O que este padrão não determina

Este padrão não exige uma linguagem, estrutura, provedor de nuvem ou padrão de arquitetura específico — essas são decisões em nível de estrutura de produto tomadas por iniciativa, seguindo os princípios em [Technology Stack](../architecture/technology-stack.md). Ele exige a disciplina em torno de tudo o que for escolhido.

---

## Documentos Relacionados

- [Tecnologia Stack](../architecture/technology-stack.md) — as escolhas de ferramentas da camada base das quais os princípios deste padrão são extraídos
- [Framework de Decisão](../framework/decision-framework.md) — quando uma decisão de engenharia precisa de um ADR
- [Padrão do GitHub](github-standard.md) — como esse padrão é aplicado na prática por meio de convenções de repositório
- [Padrão de Documentação](documentation-standard.md) — o padrão equivalente para documentação
