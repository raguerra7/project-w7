# ADR-0010: Adotar os Ativos de Identidade de Produção da W7

Status: Accepted

Date: 2026-08-09

Owner: Rafael da Silva Guerra

---

## Contexto

A W7 Foundation v1.0 definiu direção visual, paleta, tipografia e arquitetura de marcas endossadas, mas adiou os arquivos finais do logo. A documentação pública agora precisa de um símbolo reconhecível, favicon, logos horizontais e um ativo de apresentação que funcionem em superfícies claras e escuras.

## Decisão

Adotar os SVGs em `docs/assets/brand/` e as regras do Sistema de Logo como identidade de produção canônica da W7. O monograma circular combina um W branco e um 7 dourado em um campo preto fosco, expressando equilíbrio sem reproduzir o símbolo yin-yang. Preto, branco e W7 Gold permanecem as únicas cores da marca central.

## Alternativas Consideradas

- **Apenas o wordmark W7.** Rejeitado porque não oferece um símbolo compacto e distintivo para aplicações e favicon.
- **Construção literal baseada no yin-yang.** Rejeitada porque a direção visual prevê influência conceitual, não reprodução.
- **Ativos raster como fonte principal.** Rejeitados porque SVG é independente de resolução, acessível, inspecionável e versionável.
- **Símbolos diferentes para fundos claros e escuros.** Rejeitados; apenas a cor do wordmark horizontal muda, preservando uma marca central única.

## Consequências

A W7 ganha uma identidade consistente para a documentação e futuros endossos de iniciativas. Alterações na geometria, cores centrais ou relação entre símbolo e wordmark exigem uma decisão da camada de Identidade e um ADR substituto. As iniciativas mantêm identidades próprias conforme a Arquitetura de Marca.

## Relacionados

- [Sistema de Logo](../identity/logo-system.md)
- [Linguagem Visual](../identity/visual-language.md)
- [Sistema de Cores](../identity/color-system.md)
- [Arquitetura de Marca](../identity/brand-architecture.md)
