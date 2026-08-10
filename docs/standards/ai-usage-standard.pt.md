# Padrão de uso de IA

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento define como a assistência de IA é usada na construção e documentação do W7 e onde seu resultado requer julgamento humano antes de se tornar oficial.

---

## Contexto

As ferramentas de IA são usadas em todo o trabalho de engenharia e documentação do W7 — inclusive, de forma transparente, na elaboração de partes deste repositório. Esse facto é afirmado aqui e não oculto, porque um padrão sobre a utilização de IA que finja que a IA não foi utilizada não seria credível. O que importa não é se a IA esteve envolvida, mas se um ser humano assumiu a responsabilidade pelo resultado.

---

## A regra básica

**O resultado da IA torna-se oficial apenas quando um ser humano o analisa e está disposto a ser responsável por ele.** Um documento, compromisso ou decisão gerado pela IA não tem mais autoridade do que um primeiro rascunho até que alguém aplique o mesmo julgamento que aplicaria à sua própria escrita: isso se sustenta, é preciso, evita chavões e exageros, corresponde à forma como W7 realmente pensa (veja o [Manifesto](../foundations/manifesto.md))?

Isso reflete a posição do [Padrão de Engenharia](engineering-standard.md) sobre ferramentas em geral: uma ferramenta que produz resultados mais rapidamente não elimina a obrigação de compreender e apoiar esse resultado.

---

## Onde a assistência de IA é incentivada

- Elaboração de documentação para análise e revisão humana, especialmente para reafirmar o conteúdo canônico existente em um novo contexto (com um link para a fonte canônica — consulte [Arquitetura do Conhecimento](../architecture/knowledge-architecture.md)).
- Explorar alternativas durante o processo [Framework de Decisão](../framework/decision-framework.md) — A IA é uma fonte útil de contra-argumentos precisamente porque não tem interesse no resultado.
- Trabalho de engenharia padrão: estrutura inicial, testes de comportamento bem compreendido, refatorações com especificações claras.
- Revisar a documentação e o código existentes em busca de palavras-chave, inconsistências ou desvios desses padrões.

---

## Onde o julgamento humano é necessário antes de qualquer coisa ser enviada

- Qualquer alteração nos Fundamentos, Identidade, Governança, Framework, Arquitetura ou Padrões - estes codificam raciocínios e restrições compartilhados, e raciocínios pelos quais ninguém aceita responsabilidade não podem governar o ecossistema.
- Qualquer decisão do Tipo 2 ou Tipo 3 sob a [Framework de Decisão](../framework/decision-framework.md).
- Qualquer coisa apresentada como um fato sobre a história, filosofia ou intenção do fundador de W7 - os documentos do [Fundador](../founder/README.md) em particular são em primeira pessoa e não devem ser de autoria de IA, além de ajudar na redação do relato do próprio fundador.
- Código ou configuração sensível à segurança, de acordo com a [Padrão de Engenharia](engineering-standard.md).

---

## O que a saída de IA deve evitarDe acordo com o [Padrão de Documentação](documentation-standard.md): palavras-chave, linguagem de marketing, clichês de startups e frases exageradas de IA. Os rascunhos gerados pela IA têm uma tendência documentada exatamente para esse tipo de linguagem, e é exatamente por isso que a revisão desse padrão não é opcional.

---

## Transparência

Não há necessidade de anotar cada frase com sua origem – isso seria ruído, não sinal. É obrigatório que qualquer pessoa que contribua para W7 com assistência de IA siga este padrão da mesma forma que segue os padrões [Engineering](engineering-standard.md) e [Documentation](documentation-standard.md): como uma expectativa, não uma sugestão.

---

## Documentos Relacionados

- [Padrão de Documentação](documentation-standard.md) — o padrão que toda escrita, assistida por IA ou não, deve ser limpa
- [Padrão de Engenharia](engineering-standard.md) — o padrão equivalente para código
- [Framework de Decisão](../framework/decision-framework.md) — onde termina a exploração assistida por IA e começa a tomada de decisão humana
- [Limites de informação](information-boundaries.md) — quais ferramentas de IA devem ou não ter acesso
