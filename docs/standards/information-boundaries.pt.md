# Limites de informação

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento define a fronteira entre GitHub (documentação oficial e compartilhada) e Obsidian/"Rafael OS" (gestão de conhecimento pessoal), e o que pode ou não ultrapassar essa fronteira.

---

## Contexto

As ferramentas de gerenciamento de conhecimento pessoal são excelentes para capturar rapidamente pensamentos incompletos. É exatamente por isso que nunca devem ser confundidas com documentação oficial — uma nota otimizada para captura rápida de uma pessoa não é escrita com o cuidado, a revisão ou o público de longo prazo que a documentação oficial exige. Esse limite é declarado explicitamente para que nunca seja resolvido ad hoc, diferentemente, por quem estiver inseguro naquele dia.

---

## O limite

| | GitHub | Obsidian ("Rafael OS") |
|---|---|---|
| Finalidade | Fonte oficial e compartilhada da verdade | Gestão do conhecimento pessoal |
| Público | Qualquer pessoa com acesso ao repositório | O fundador sozinho |
| Autoridade | Vinculativo — outros podem confiar nele | Nenhum — é um projeto de trabalho por definição |
| Revisão | Segue a [Padrão de Documentação](documentation-standard.md) | Não é necessário |
| Vida útil | Permanente, versionado, mantido mesmo quando substituído | Descartável; pode ser excluído, reescrito, abandonado livremente |

Obsidian nunca substitui GitHub, independentemente de quão completa uma nota se torne. No momento em que uma nota é estável e útil o suficiente para que alguém possa agir razoavelmente sobre ela, ela é promovida: ela é reescrita para atender ao Padrão de Documentação e enviada para o repositório apropriado. Até que isso aconteça, não existe no que diz respeito ao registro oficial de W7.

---

## O que nunca sai do Obsidian como está

- Reflexões pessoais não arquivadas, incluindo o material de trabalho por trás dos documentos do [Fundador](../founder/README.md) antes de serem deliberadamente redigidos.
- Rascunho do raciocínio que ainda não foi verificado em relação ao [Framework de Decisão](../framework/decision-framework.md).
- Qualquer coisa que contenha informações que não deveriam ser públicas, conforme classificação abaixo, independentemente de o repositório de destino ser privado — privado hoje não garante privado depois.

---

## Classificação de Sensibilidade

Cada informação tratada em W7 se enquadra em uma das três classes:

| Classe | Exemplos | Onde pode morar |
|---|---|---|
| Público | Fundações, normas, conteúdo de iniciativa publicado | Repositórios públicos GitHub |
| Interno | Detalhe do roteiro, planos de produtos não divulgados, rascunhos de ADRs | Repositórios GitHub privados |
| Privado | Credenciais, reflexões pessoais privadas, divergências não resolvidas, qualquer coisa sobre uma pessoa específica sem o seu consentimento | Nunca enviado ao Git, em qualquer repositório, público ou privado |

Credenciais e segredos são privados por definição e são regidos pela regra do [Engineering Standard](engineering-standard.md) de que eles nunca entram no controle de versão - um repositório privado também não é um local aceitável para um segredo, porque a visibilidade pode mudar e o histórico é difícil de limpar completamente.

---

## Ferramentas de IA e este limite

As ferramentas de IA que auxiliam no trabalho do W7 podem receber informações públicas. As informações internas são fornecidas apenas para ferramentas aprovadas para o repositório relevante e contexto de tratamento de dados, de acordo com o [AI Usage Standard](ai-usage-standard.md). As informações privadas não são coladas em contextos de ferramentas de IA, prompts ou documentação gerada, independentemente da conveniência.

---

## Documentos Relacionados

- [Arquitetura do Conhecimento](../architecture/knowledge-architecture.md) — o modelo de dois repositórios que esse limite define em detalhes
- [Padrão de uso de IA](ai-usage-standard.md) — como esse limite se aplica ao trabalho assistido por IA
- [Padrão de Documentação](documentation-standard.md) — a barra que uma nota deve limpar para passar de Obsidian para GitHub
- [Engineering Standard](engineering-standard.md) — a regra de que segredos nunca entram no controle de versão
