# 📦 Análise Exploratória — Olist E-Commerce

Análise exploratória completa do dataset público da Olist, maior plataforma de e-commerce do Brasil, com dados reais de **2016 a 2018**.

---

## 🎯 Objetivo

Entender o comportamento de vendas, satisfação do cliente e performance de entrega, respondendo perguntas de negócio relevantes a partir dos dados.

---

## 🗂️ Fonte dos Dados

- **Dataset:** [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
- **Plataforma:** Kaggle
- **Período:** 2016 – 2018
- **Volume:** ~100 mil pedidos reais

---

## ❓ Perguntas Respondidas

1. Quantos pedidos por mês? Houve sazonalidade?
2. Quais estados do Brasil compram mais?
3. Qual a nota média de avaliação dos clientes?
4. Atrasos na entrega impactam a avaliação?
5. Qual a forma de pagamento mais usada?
6. Quais categorias de produto mais vendem?

---
---
## 📌 Recomendações de Negócio

Com base nos dados analisados, seguem recomendações estratégicas para a Olist:

1. **Priorizar SLA de entrega no Nordeste e Centro-Oeste** — Pedidos atrasados geram nota média 2,02 pontos abaixo dos entregues no prazo (2.27 vs 4.29). Estados fora do eixo SP-RJ concentram maior proporção de atrasos e devem ser foco de negociação com transportadoras.

2. **Explorar sazonalidade da Black Friday** — Novembro/2017 foi o mês com maior volume de pedidos. A Olist pode se preparar com antecedência para os próximos novembros aumentando estoque e capacidade logística.

3. **Incentivar parcelamento consciente** — Com 75.2% dos pagamentos em cartão de crédito, campanhas de parcelamento podem aumentar o ticket médio, especialmente nas categorias de maior valor como Informática e Eletrodomésticos.

4. **Investir nas categorias de alto volume** — Cama, Mesa e Banho lidera com 11.115 itens vendidos. Ações de cross-sell com categorias complementares (ex: Utilidades Domésticas) podem aumentar o valor por pedido.



## 💡 Principais Insights

| Insight | Valor |
|---|---|
| Total de pedidos entregues | 96.478 |
| Mês com mais pedidos | Novembro/2017 (Black Friday) |
| Estado que mais compra | SP (40.501 pedidos) |
| Nota média geral | 4.16 / 5.00 |
| Nota com entrega no prazo | 4.29 / 5.00 |
| Nota com entrega atrasada | 2.27 / 5.00 |
| Forma de pagamento #1 | Cartão de Crédito (75.2%) |
| Categoria mais vendida | Cama, Mesa e Banho (11.115 itens) |

> 🔍 **Destaque:** Pedidos atrasados têm nota média 2 pontos abaixo dos entregues no prazo (2.27 vs 4.29), mostrando que a experiência de entrega é o principal fator de satisfação do cliente.

---

## 📊 Visualizações

| Gráfico | Descrição |
|---|---|
| ![Pedidos por Mês](grafico_pedidos_mes.png) | Evolução mensal de pedidos |
| ![Pedidos por Estado](grafico_pedidos_estado.png) | Ranking de estados por volume |
| ![Avaliações](grafico_avaliacoes.png) | Distribuição de notas e impacto de atrasos |
| ![Pagamentos](grafico_pagamentos.png) | Formas de pagamento mais usadas |
| ![Categorias](grafico_categorias.png) | Top 15 categorias mais vendidas |

---

## 🛠️ Tecnologias Utilizadas

- **Python 3.14**
- **pandas** — manipulação e limpeza dos dados
- **matplotlib / seaborn** — visualizações
- **Jupyter Notebook** — ambiente de análise
- **Looker Studio** — dashboard interativo (em breve)

---

## 📁 Estrutura do Repositório

```
olist-ecommerce-analysis/
├── data/                  # Datasets originais do Kaggle
├── olist_analise_exploratoria.ipynb  # Notebook completo
├── grafico_*.png          # Gráficos gerados
├── export_*.csv           # Dados tratados para o dashboard
└── README.md
```

---

## ▶️ Como Rodar

1. Clone o repositório:
```bash
git clone https://github.com/dionesantoss/olist-ecommerce-analysis.git
```

2. Instale as dependências:
```bash
pip install pandas matplotlib seaborn
```

3. Baixe o dataset no [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) e coloque os CSVs na pasta `data/`

4. Abra e rode o notebook `olist_analise_exploratoria.ipynb`

---
## 👩‍💻 Autora
**Dione Santos**  
Analista de Dados Jr. | Python • SQL • Looker Studio

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/dione-dias-dos-santos-3a4498221)  

[![GitHub](https://img.shields.io/badge/GitHub-dionesantoss-181717?style=flat&logo=github)](https://github.com/dionesantoss)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Dione%20Santos-0A66C2?style=flat&logo=linkedin)](https://linkedin.com/in/seu-perfil)
