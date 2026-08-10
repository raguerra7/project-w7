# Pilha de tecnologia

Version: 1.1.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento lista as ferramentas nas quais o W7 é construído na camada base e o raciocínio por trás de cada escolha. Ele não lista as escolhas tecnológicas feitas dentro de iniciativas individuais — elas pertencem ao repositório da própria iniciativa e herdam apenas os princípios abaixo, e não as ferramentas específicas.

---

## Contexto

A pilha favorece formatos abertos, ferramentas estabelecidas e serviços hospedados substituíveis que provavelmente permanecerão recuperáveis em dez anos. Este é um preconceito deliberado. Ferramentas orientadas por tendências e formatos de armazenamento proprietários são responsabilidades em um repositório destinado a durar mais que tudo o que é popular no ano em que foi escrito.

---

## Princípios por trás das escolhas

**Formatos abertos em vez de proprietários.** Qualquer coisa que armazene o conhecimento do W7 deve ser legível apenas com um editor de texto e um cliente Git, sem necessidade de conta de fornecedor para recuperá-lo.

**Texto simples sobre binário.** Markdown, YAML e texto simples diferem de forma clara, mesclam-se de maneira previsível e sobrevivem às migrações de ferramentas. Formatos binários (processadores de texto proprietários, arquivos de projetos de ferramentas de design) são evitados para qualquer coisa canônica.

**Git como mecanismo, GitHub como local.** O mecanismo (Git) é portátil e independente do fornecedor. O local (GitHub) pode ser substituído se for necessário, porque o mecanismo abaixo dele não está travado.

**Estático sobre dinâmico.** Nada neste repositório requer um servidor em execução, um banco de dados ou uma conta para leitura. Um clone deste repositório, aberto com qualquer editor de texto, é totalmente independente.

---

## A pilha| Camada | Escolha | Por que |
|---|---|---|
| Controle de origem | Git | Distribuído, aberto, o padrão de facto; não vinculado a nenhum host |
| Hospedagem | GitHub | Onde a equipe já colabora; não é tratado como insubstituível — veja abaixo |
| Formato da documentação | Markdown (Marca Comum) | Legível como texto simples, renderizado em qualquer lugar, sem dependência proprietária |
| Site de documentação | MkDocs (tema material) | Gerador de sites estáticos sem dependência de servidor; compila diretamente do Markdown já neste repositório, nada é duplicado para produzi-lo |
| Registos de decisões | ADRs (Markdown, [modelo](../adr/template.md)) | Leve, versionado juntamente com as decisões que documentam |
| Convenção de compromisso | [Commits Convencionais](https://www.conventionalcommits.org/) | História analisável por máquina; permite registros de alterações e torna a intenção explícita rapidamente |
| Integração contínua | Ações GitHub | Valida e implanta a documentação baseada nas alterações em `main`; disponibilidade pública ainda depende das configurações do repositório e das páginas |
| Gestão do conhecimento pessoal | Obsidian ("Rafael OS") | Explicitamente **não** faz parte da pilha que produz a documentação oficial — consulte [Limites de informações](../standards/information-boundaries.md) |

---

## O que deliberadamente não está aqui

Não há banco de dados, serviço de back-end e nenhuma etapa de construção que não seja um gerador de site estático. Se uma iniciativa futura precisar de algum desses, é decisão dessa iniciativa tomar em seu próprio repositório, seguindo o [Product Framework](../framework/product-framework.md) - ela não se torna parte da pilha deste repositório.

---

## Reversibilidade

GitHub foi escolhido por conveniência e alcance, não porque W7 dependa de sua existência para sempre. Tudo neste repositório é Markdown simples no Git; a migração de hosts está a um `git remote set-url` de distância, não uma reescrita. Isto é intencional: a ferramenta deve ser sempre mais fácil de substituir do que o conhecimento que ela contém.

---

## Documentos Relacionados

- [Visão geral da arquitetura](overview.md) — o modelo de camada que esta pilha suporta
- [GitHub Standard](../standards/github-standard.md) — como este repositório é realmente usado no dia a dia
- [Engineering Standard](../standards/engineering-standard.md) — como se espera que os repositórios de iniciativa operem
- [ADR-0001: GitHub como a única fonte da verdade](../adr/0001-github-as-source-of-truth.md) — a decisão de tornar GitHub a fonte da verdade
