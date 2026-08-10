# ADR-0008: Ativar os Padrões Compartilhados

Situação: Aceito

Date: 03/08/2026

Owner: Rafael da Silva Guerra

---

## Contexto

Os padrões de documentação, engenharia, GitHub, uso de IA e limites de informação de W7 já foram referenciados por estruturas ativas, mas permaneceram marcados como `Draft`. Revise as regras encontradas que eram internamente contraditórias ou mais amplas do que o repositório poderia aplicar com segurança: As ADRs usam um formato de registro criado especificamente, e não metadados de versões de documentos vivos; nem toda iniciativa produz código; e As informações internas não devem ser fornecidas indiscriminadamente às ferramentas de IA.

## Avaliação Constitucional

- **Por que isso deveria existir?** Os padrões compartilhados transformam os princípios do W7 em expectativas repetíveis de qualidade, segurança e revisão.
- **Quem se beneficia?** Colaboradores, mantenedores, líderes de iniciativas e leitores recebem artefatos consistentes e limites mais claros para o tratamento de informações.
- **Permanecerá valioso ao longo do tempo?** Sim. Os padrões especificam práticas duráveis, evitando linguagens, fornecedores ou arquiteturas de produtos obrigatórias.
- **Isso fortalece o ecossistema W7?** Sim. Regras comuns de qualidade e segurança permitem que as iniciativas permaneçam autónomas sem ficarem abaixo da linha de base do ecossistema.

## Decisão

Ative a versão 1.1.0 dos padrões Documentação, Engenharia, GitHub, Uso de IA e Limites de Informação. Os ADRs mantêm o seu modelo específico como uma exceção de documentação explícita. As informações internas podem ser utilizadas apenas com ferramentas aprovadas para seu repositório e contexto de manipulação, enquanto as informações privadas permanecem fora dos contextos Git e AI.

## Alternativas consideradas

- **Manter aconselhamento ou rascunho de padrões.** Rejeitado porque iniciativas e estruturas ativas já afirmam herdá-los.
- **Aplicar o esquema de documento vivo às ADRs.** Rejeitado porque os registros de decisão preservam uma conclusão datada e têm um ciclo de vida distinto definido pelo modelo de ADR.
- **Exigir práticas de engenharia de todas as iniciativas, independentemente do resultado.** Rejeitado porque iniciativas não técnicas podem não ter código; a norma se aplica quando existe trabalho técnico.
- **Permitir informações internas em qualquer ferramenta de IA.** Rejeitado porque a classificação sem ferramentas e controles de tratamento de dados não criaria um limite significativo.

## Consequências

O trabalho W7 compartilhado agora tem uma padrão mínimo ativa para documentação, engenharia, colaboração GitHub, trabalho assistido por IA e classificação de informações. Os padrões específicos da iniciativa podem acrescentar restrições, mas não enfraquecer estas linhas de base. Os colaboradores devem exercer julgamento sobre a aprovação da ferramenta e permanecer responsáveis ​​pelos resultados assistidos por IA.

## Relacionados

- [Padrão de Documentação](../standards/documentation-standard.md)
- [Padrão de Engenharia](../standards/engineering-standard.md)
- [Padrão GitHub](../standards/github-standard.md)
- [Padrão de uso de IA](../standards/ai-usage-standard.md)
- [Limites de informação](../standards/information-boundaries.md)
- [Modelo ADR](template.md)
