# Padrão de Documentação

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento define as regras concretas que todos os documentos em W7 seguem, para que a qualidade da documentação não dependa de quem estiver escrevendo naquele dia.

---

## Contexto

Os princípios por si só (“escrever claramente”) não evitam a deriva; regras concretas e verificáveis ​​sim. Este padrão existe para que qualquer documento – escrito pelo fundador, um colaborador ou com assistência de IA sob o [AI Usage Standard](ai-usage-standard.md) – possa ser verificado na mesma barra.

---

## Todo documento canônico deve ter

1. Um título como H1.
2. Um cabeçalho de metadados diretamente abaixo do título: `Version`, `Status` (`Draft`, `Active`, `Deprecated` ou `Superseded`), `Owner`.
3. Uma seção `Purpose`: para que serve este documento, em uma ou duas frases.
4. Uma seção `Context`: por que este documento existe, quando isso não é óbvio apenas pelo propósito.
5. Uma seção `Related Documents` no final, com links para os documentos dos quais este depende ou dos quais depende.

Um documento em que falta algum destes elementos está incompleto, independentemente de quão boa seja a sua prosa.

ADRs são a exceção deliberada: registros de decisão numerados seguem o [modelo ADR ](../adr/template.md) ativo, cujos campos `Date`, `Context`, `Decision`, `Consequences` e `Related` preservam uma decisão em vez de versionar um documento vivo. Os pontos de entrada do repositório e os modelos reutilizáveis ​​podem usar uma estrutura específica para a finalidade, mas as declarações canônicas pertencem aos documentos regidos por esta norma.

---

## Regras de escrita

- **Afirme claramente.** Evite chavões, linguagem de marketing, clichês de startups e frases exageradas de IA ("revolucionário", "revolucionário", "revolucionário", "de vanguarda", "desbloquear sinergias"). Se uma frase se encaixar igualmente bem na apresentação de qualquer empresa, reescreva-a ou remova-a.
- **Prefira o concreto ao abstrato.** "Os documentos passam por Rascunho, Ativo, Obsoleto, Substituído" é melhor do que "os documentos seguem um ciclo de vida".
- **Um fato, uma casa.** Não reafirme o que outro documento já afirma canonicamente - crie um link para ele. Consulte [Arquitetura do Conhecimento](../architecture/knowledge-architecture.md).
- **Escreva para o leitor daqui a cinco anos**, não para o leitor de hoje que já tem contexto. Suponha que o leitor nunca tenha falado com o autor.
- **Sem espaços reservados.** Um documento que diz "TODO" ou "a preencher" não foi publicado — ainda não existe.

---

## Estrutura e Formatação

- Markdown compatível com CommonMark, portanto sua fonte permanece legível em GitHub, MkDocs e qualquer editor de texto simples. Extensões configuradas no repositório, como Mermaid, podem aprimorar o site renderizado sem substituir a fonte legível.
- Os títulos utilizam `#`/`##` hierarquicamente; não pule níveis.
- As tabelas são usadas para comparações e campos estruturados repetidos quando são digitalizados com mais clareza do que prosa ou lista.
- As regras horizontais (`---`) separam as seções principais para facilitar a leitura tanto na forma renderizada quanto na forma bruta.
- Links internos são sempre caminhos relativos, nunca codificados para um host específico, portanto o repositório funciona se for espelhado ou migrado.

---

## Versionamento

O `Version` de um documento aumenta (`1.0.0` → `1.1.0`) em qualquer alteração significativa de conteúdo e (`1.0.0` → `2.0.0`) quando suas conclusões mudam, não apenas seu texto. As correções de erros de digitação não exigem um aumento de versão. Isso reflete o versionamento semântico deliberadamente - as alterações na documentação têm as mesmas três questões que as alterações no código: isso é uma correção, uma adição ou uma alteração significativa naquilo em que os leitores já confiavam?

---

## Revisão

Qualquer documento que altere um arquivo de camada de Fundação, Identidade, Governança ou Estrutura passa pelo [Decision Framework](../framework/decision-framework.md) antes da fusão, independentemente de quão pequena a mudança pareça.

---

## Documentos Relacionados

- [Arquitetura do Conhecimento](../architecture/knowledge-architecture.md) — por que essas regras existem estruturalmente
- [GitHub Standard](github-standard.md) — como os documentos passam pela revisão e mesclagem
- [AI Usage Standard](ai-usage-standard.md) — como este padrão se aplica à escrita assistida por IA
- [Engineering Standard](engineering-standard.md) — o padrão equivalente para código
