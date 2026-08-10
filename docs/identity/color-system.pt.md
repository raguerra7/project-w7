# Sistema de cores

Version: 1.0.0

Status: Active

Owner: Rafael da Silva Guerra

---

## Propósito

Este documento define as funções de cores canônicas W7 e seus limites de uso.

---

## Contexto

W7 precisa de uma paleta restrita e reproduzível antes que os recursos visuais sejam produzidos. As cores são definidas por função para que as implementações possam atender às necessidades de acessibilidade sem tratar uma tonalidade decorativa como imutável.

---

## Paleta Principal

| Função | Referência | Hexágono | Usar |
|---|---|---|---|
| Preto fosco | Primário | `#111111` | Fundo primário, marca escura, texto forte |
| Branco | Tela | `#FFFFFF` | Fundo claro, texto invertido, espaço negativo |
| W7 Ouro | Assinatura | `#C8A45D` | Ênfase deliberada, linhas-chave, detalhes de marca selecionados |
| Nuvem Azul | Sotaque técnico | `#3977D6` | Diagramas relacionados à nuvem e categorização técnica |
| IA Violeta | Sotaque técnico | `#7557C8` | Diagramas relacionados à IA e categorização técnica |

## Regras

- Preto, branco e dourado formam a expressão central W7.
- O dourado é um destaque, não uma cor do corpo do texto ou um substituto para a hierarquia de informações.
- Azul e violeta comunicam categorias técnicas apenas quando a distinção tem significado.
- A cor nunca carrega significado sozinha; combine-o com texto, forma ou ícone.
- Toda implementação deve atender ao contraste WCAG 2.2 AA para texto normal e estados interativos.
- Gradientes, efeitos neon e cromo simulado não fazem parte da linguagem principal.

## Uso de iniciativa

As iniciativas podem definir suas próprias paletas. O endosso W7 deve usar a paleta principal e permanecer visualmente distinto dos acentos específicos da iniciativa.

---

## Documentos Relacionados

- [Linguagem Visual](visual-language.md) — regras de composição e imagens
- [Typography](typography.md) — o sistema de tipo complementar
- [Arquitetura de Marca](brand-architecture.md) — autonomia de iniciativa e endosso
