# Sistema de Logo

Version: 1.0.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento define as marcas de produção canônicas da W7, seus usos e as restrições que preservam reconhecimento e legibilidade.

---

## Contexto

A Linguagem Visual estabeleceu um monograma circular W7 inspirado em equilíbrio. Este documento converte essa direção em arquivos SVG versionados para documentação, interfaces, favicons e apresentações.

---

## Marcas Canônicas

### Símbolo

![Símbolo W7](../assets/brand/w7-symbol.svg)

O símbolo é a marca compacta preferencial. O círculo preto fosco expressa continuidade; o W branco e o 7 dourado se encontram no centro sem reproduzir um símbolo yin-yang.

### Logo Horizontal — Fundo Claro

![Logo W7 para fundos claros](../assets/brand/w7-logo-dark.svg)

Usar sobre superfícies brancas ou neutras claras.

### Logo Horizontal — Fundo Escuro

<div style="background:#111111;padding:1rem;border-radius:.5rem">
  <img src="../../assets/brand/w7-logo-light.svg" alt="Logo W7 para fundos escuros">
</div>

Usar sobre preto fosco ou superfícies suficientemente escuras.

## Arquivos

| Ativo | Uso |
|---|---|
| `w7-symbol.svg` | Avatar, ícone de aplicação, endosso e espaços compactos |
| `w7-logo-dark.svg` | Logo horizontal sobre fundos claros |
| `w7-logo-light.svg` | Logo horizontal sobre fundos escuros |
| `favicon.svg` | Navegador e pequenos elementos de interface |
| `w7-social-card.svg` | Prévia do repositório e apresentações |

## Área de Proteção e Tamanho Mínimo

- Manter ao redor do símbolo um espaço livre equivalente a pelo menos um quarto de seu diâmetro.
- Não renderizar o símbolo abaixo de 24 pixels CSS; em tamanhos menores, usar o favicon.
- Não renderizar o logo horizontal abaixo de 120 pixels CSS de largura.

## Regras

- Não esticar, girar, contornar, recolorir ou reorganizar a marca.
- Não remover o campo circular preto do símbolo.
- Não substituir o W7 Gold por gradiente ou efeito metálico simulado.
- Não posicionar a marca sobre fundos que enfraqueçam seu contraste.
- Marcas de iniciativas permanecem independentes; W7 aparece como endosso, não como prefixo obrigatório.

## Acessibilidade

Todos os SVGs de produção contêm título, descrição ou rótulo acessível. Textos próximos devem identificar W7 quando o símbolo isolado puder ser ambíguo.

---

## Documentos Relacionados

- [Linguagem Visual](visual-language.md) — princípios por trás da marca
- [Sistema de Cores](color-system.md) — cores canônicas
- [Tipografia](typography.md) — tipografia do wordmark
- [Arquitetura de Marca](brand-architecture.md) — modelo de endosso
- [ADR-0010](../adr/0010-adopt-w7-production-identity-assets.md) — aprovação destes ativos
