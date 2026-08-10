# ADR-0007: Ativar a Arquitetura do Ecossistema

Situação: Aceito

Date: 03/08/2026

Owner: Rafael da Silva Guerra

---

## Contexto

A Visão Geral da Arquitetura, Topologia, Arquitetura do Conhecimento e Pilha de Tecnologia descrevem como W7 é dividido em camadas, onde o conhecimento pertence e quais ferramentas suportam o repositório. Eles permaneceram marcados como `Draft`, embora ADR-0001 e ADR-0002 já tivessem aceitado suas decisões centrais. A ativação exigiu a remoção de uma enumeração ADR fixa da topologia e a distinção entre formatos abertos e serviços de hospedagem proprietários substituíveis na lógica tecnológica.

## Avaliação Constitucional

- **Por que isso deveria existir?** W7 precisa de um modelo estrutural explícito para que as mudanças tenham um escopo previsível e o conhecimento tenha um lar canônico.
- **Quem se beneficia?** Colaboradores e mantenedores de iniciativas podem colocar documentos, decisões e trabalhos de produtos sem criar dependências ocultas.
- **Permanecerá valioso ao longo do tempo?** Sim. Os modelos de camadas e de conhecimento são independentes de produtos individuais, enquanto a pilha de tecnologia é projetada para substituição.
- **Isso fortalece o ecossistema W7?** Sim. A arquitetura compartilhada evita a duplicação e preserva a capacidade de recuperação à medida que as iniciativas se multiplicam.

## Decisão

Ative a versão 1.1.0 da Visão Geral da Arquitetura, Topologia do Ecossistema, Arquitetura do Conhecimento e Pilha de Tecnologia. W7 mantém seu modelo de camada ordenada, regra de um fato, uma casa, limite GitHub/Obsidian e pilha de documentação estática de texto simples.

## Alternativas consideradas

- **Manter a arquitetura implícita na estrutura de pastas.** Rejeitado porque as pastas por si só não explicam as dependências permitidas ou o impacto da mudança.
- **Ative apenas a visão geral em prosa.** Rejeitado porque os diagramas, as regras de conhecimento e a pilha de implementação descrevem aspectos separados necessários para operar a mesma arquitetura.
- **Trate todas as ferramentas como infraestrutura aberta.** Rejeitado porque GitHub é um local proprietário; a portabilidade vem do Git e de formatos de código aberto, não de fingir que o local é aberto.
- **Mantenha os documentos como Rascunho.** Rejeitado porque ADRs aceitos e estruturas ativas já dependem dessas regras de arquitetura.

## Consequências

O posicionamento do repositório e a direção da dependência tornam-se restrições ativas. O conhecimento oficial permanece nos repositórios GitHub e o conhecimento prático privado permanece em Rafael OS até ser promovido. Os serviços hospedados podem mudar, mas o conteúdo canônico deve permanecer portátil em formatos de texto simples.

## Relacionados

- [Visão geral da arquitetura](../architecture/overview.md)
- [Topologia do ecossistema](../architecture/topology.md)
- [Arquitetura do Conhecimento](../architecture/knowledge-architecture.md)
- [Pilha de tecnologia](../architecture/technology-stack.md)
- [ADR-0001](0001-github-as-source-of-truth.md)
-[ADR-0002](0002-layered-repository-architecture.md)
