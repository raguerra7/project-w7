# Topologias do Ecossistema

Version: 1.2.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento complementa visualmente a [Visão Geral da Arquitetura](overview.md): o mesmo modelo de camadas, estrutura de repositório, herança de iniciativas e limite de conhecimento apresentados como diagramas.

---

## Contexto

Relacionamentos como herança e o retorno do aprendizado aos Fundamentos são mais fáceis de conferir visualmente. Os diagramas podem ser rolados horizontalmente e ampliados com um clique.

---

## Modelo de Camadas

```mermaid
flowchart TD
    F["Fundamentos<br/>Por que a W7 existe"]
    I["Identidade<br/>Como a W7 é expressa"]
    G["Governança<br/>Quem decide"]
    FR["Framework<br/>Como o trabalho é criado"]
    IN["Iniciativas<br/>Áreas duradouras de trabalho"]
    P["Produtos<br/>Resultados mantidos"]
    E["Experiências<br/>O que as pessoas encontram"]
    L["Aprendizado<br/>Evidências e ADRs"]

    F --> I --> G --> FR --> IN --> P --> E --> L
    L -.->|retorna por ADR ou emenda| F

    classDef stable fill:#111111,stroke:#c8a45d,color:#ffffff,stroke-width:2px;
    classDef volatile fill:#f7f7f5,stroke:#666666,color:#111111;
    class F,I,G stable
    class FR,IN,P,E,L volatile
```

As setas sólidas mostram a direção da dependência. O único caminho de retorno é o aprendizado: uma lição se transforma em ADR e somente uma decisão deliberada pode alterar os Fundamentos.

## Framework do Repositório

```mermaid
flowchart TB
    ROOT["project-w7<br/>Repositório canônico do ecossistema"]
    ROOT --> GOV["Camadas de governo"]
    ROOT --> WORK["Camadas operacionais"]
    ROOT --> SUPPORT["Suporte do repositório"]

    GOV --> FOUND["foundations/"]
    GOV --> IDENT["identity/"]
    GOV --> FRAME["framework/"]

    WORK --> INIT["initiatives/"]
    WORK --> ARCH["architecture/"]
    WORK --> STD["standards/"]
    WORK --> ADR["adr/"]
    WORK --> ROAD["roadmap/"]
    WORK --> FOUNDER["founder/"]

    SUPPORT --> TEMPLATES["templates/"]
    SUPPORT --> SCRIPTS["scripts/"]
    SUPPORT --> GITHUB[".github/"]

    FOUND --> IDENT --> FRAME --> INIT
    STD -.-> GOV
    ADR -.-> GOV
```

O local de cada documento expressa sua dependência e seu alcance. Colocá-lo na pasta errada significa atribuir autoridade à camada errada.

## Herança das Iniciativas

```mermaid
flowchart TD
    W7["W7<br/>Fundamentos + Identidade + Governança + Framework"]
    WT["WarTips<br/>Iniciativa ativa"]
    F1["Iniciativa futura<br/>ex.: Home Lab"]
    F2["Iniciativa futura<br/>ex.: Academy"]

    W7 -->|herda por referência| WT
    W7 -->|herda por referência| F1
    W7 -->|herda por referência| F2

    WT --> WTP1["Produto<br/>nenhum registrado"]
    F1 --> F1P["Produtos<br/>definidos quando criados"]
    F2 --> F2P["Produtos<br/>definidos quando criados"]
```

Cada iniciativa aponta para uma única W7. Iniciativas não dependem informalmente umas das outras; uma necessidade desse tipo passa pelo Framework de Decisão.

## Limite do Conhecimento

```mermaid
flowchart LR
    subgraph Obsidian["Obsidian — Rafael OS"]
        drafts["Rascunhos<br/>reflexões privadas<br/>notas de trabalho"]
    end
    subgraph GitHub["GitHub — registro oficial"]
        official["Markdown revisado<br/>versionado e referenciável"]
    end

    drafts -->|é promovido após revisão| official
    official -.->|nunca retorna como nota privada| drafts
```

Essa é uma promoção em uma única direção, nunca uma sincronização.

---

## Documentos Relacionados

- [Visão Geral da Arquitetura](overview.md) — versão textual do modelo
- [Arquitetura do Conhecimento](knowledge-architecture.md) — raciocínio por trás do limite do conhecimento
- [ADR-0002](../adr/0002-layered-repository-architecture.md) — decisão sobre a arquitetura em camadas
- [Framework de Iniciativas](../framework/initiative-framework.md) — processo por trás da herança
