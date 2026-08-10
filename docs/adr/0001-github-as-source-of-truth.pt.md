# ADR-0001: GitHub como a única fonte de verdade

Situação: Aceito

Date: 03/08/2026

Owner: Rafael da Silva Guerra

---

## Contexto

O conhecimento do W7 é produzido em dois locais: GitHub, onde a documentação pode ser versionada, revisada e compartilhada, e Obsidian ("Rafael OS"), usado para rápida captura pessoal de ideias à medida que elas ocorrem. Ambos são úteis e já estavam em uso ativo antes de esta decisão ser escrita. Sem uma decisão explícita, é ambíguo em qual deles um colaborador, um futuro membro da equipe ou o futuro eu do fundador deve confiar quando os dois discordam.

## Decisão

GitHub é a única fonte de verdade oficial para W7. Qualquer documento, decisão ou reivindicação que não tenha sido enviado ao repositório GitHub apropriado não é oficial, independentemente de quão completo ou antigo seja em outro lugar. Obsidian permanece em uso contínuo para gerenciamento de conhecimento pessoal, mas nunca como um substituto para GitHub, de acordo com [Limites de informação](../standards/information-boundaries.md).

## Alternativas consideradas

- **Obsidian como a fonte de verdade, com GitHub como uma exportação periódica.** Rejeitado: isso faz com que a versão canônica viva em uma ferramenta de usuário único, não diferenciável e não revisável, que não ultrapassa uma pessoa e não se beneficia do histórico ou modelo de revisão do Git.
- **Trate ambos como igualmente confiáveis, resolvidos caso a caso.** Rejeitado: isso reintroduz a ambiguidade exata que esta ADR existe para remover e apenas muda a discordância para "qual deles vence desta vez".
- **Um wiki dedicado ou plataforma de documentação fora do GitHub.** Rejeitado: introduz um segundo sistema para manter, revisar e proteger, sem um benefício claro sobre o Markdown já versionado no Git, e funciona contra o princípio de formato aberto e sem bloqueio em [Technology Stack](../architecture/technology-stack.md).

## Consequências

Cada iniciativa sob W7 sabe inequivocamente onde procurar e comprometer o conhecimento oficial. Obsidian permanece útil para exploração sem a necessidade de ser "limpo" ou apresentável. O custo é a disciplina: as ideias capturadas em Obsidian devem ser deliberadamente graduadas em GitHub antes que qualquer outra pessoa possa confiar nelas, e essa etapa de graduação às vezes será ignorada por engano — este é um custo aceito e monitorado, e não desconhecido.

## Relacionado

- [Arquitetura do Conhecimento](../architecture/knowledge-architecture.md)
- [Limites de informação](../standards/information-boundaries.md)
- [Pilha de tecnologia](../architecture/technology-stack.md)
