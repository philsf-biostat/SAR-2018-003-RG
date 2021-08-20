---
title: "Análise exploratória de dados de pacientes com pubalgia atlética no Brasil"
author: '**De:** Felipe Figueiredo **Para:** Rodrigo Góes'
date: '**Data: ** 12/07/2019'
output:
  html_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 6
    keep_md: yes
    number_sections: yes
    toc: yes
  pdf_document:
    number_sections: yes
    toc: yes
  word_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 6
    reference_docx: misc/style.docx
    toc: yes
subtitle: 'RELATÓRIO: analise_dados_RG_2018-v01'
toc-title: "Sumário"
---



---

**Histórico do documento**


| Versão |   Alterações   |
|:------:|:--------------:|
|   01   | Versão inicial |

---

<!-- # Assinaturas -->

<!-- ```{r, echo=FALSE} -->
<!-- sig.field <- "__________________________" -->
<!-- date.field <- "_____________" -->
<!-- Stat <- c("Elaborador", "Felipe Figueiredo", "Bioestatístico", sig.field, date.field) -->
<!-- Reviewer <- c("Revisado por", "", "", sig.field, date.field) -->
<!-- Approver <- c("Verificado por", "", "", sig.field, date.field) -->
<!-- Final.Approver <- c("Aprovação final", "", "", sig.field, date.field) -->

<!-- sigs <- rbind( -->
<!--   Stat -->
<!--   , Reviewer -->
<!--   , Approver -->
<!--   , Final.Approver -->
<!--   ) -->
<!-- rownames(sigs) <- NULL -->
<!-- colnames(sigs) <- c("Papel", "Nome", "Função", "Assinatura", "Data") -->

<!-- pander(sigs, split.cells = c(9, 14, 14, 16, 8), split.table = Inf) -->
<!-- # kable(sigs) -->
<!-- ``` -->

# Lista de abreviaturas

# Introdução

## Objetivos

Descrever as ocorrências de pubalgia em atletas de diversas modalidades esportivas e níveis de dedicação.

## Recepção e tratamento dos dados

Os dados foram recebidos em uma planilha Excel, no formato longo (uma observação por linha).
A planilha continha tabelas separadas para classificar corretamente os dados em que um participante contribui com várias observações.
As tabelas utilizadas nesta análise representam:

- Dados dos participantes
- Esportes praticados
- Locais em que os participantes sentem dor
- Movimentos em que os participantes sentem dor

Todas as tabelas contém um código unívoco que identifica cada participante.
Este código foi usado para mergir as tabelas para análise.

# Metodologia



Foi feita uma análise exploratória de dados, descrevendo o perfil epidemiológico dos participantes do estudo.
As variáveis categóricas são apresentadas como frequência e proporção (%).

Esta análise foi realizada utilizando-se o software `R` versão 3.6.1.

# Resultados

## Participantes do estudo



Esta série de casos contou com 245 participantes, dos quais 29 era mulheres e 216 eram homens.
Os participantes do estudo tinham idades entre 14 e 75 anos.
Atletas atuantes no Brasil, os participantes são oriundos de 21 estados brasileiros (AC, AM, BA, CE, DF, ES, GO, MA, MG, MT, PA, PE, PR, RJ, RN, RO, RR, RS, SC, SE, SP), e 4 atletas estrangeiros (Angola, Guiné, França, Portugal).

Os participantes foram perguntados sobre o nível de dedicação que eles praticam seu esporte: 44 praticam no nível profissional, 19 no nível universitário/escolar e 182 praticam de forma recreacional.
36 participantes relataram sentir dor aguda.
Após as avaliações médicas 23 participantes receberam indicação de algum procedimento cirúrgico para mitigar os sintomas.

## Distribuição das modalidades esportivas praticadas pelos atletas com pubalgia



Nesta série de casos, os atletas com pubalgia relataram praticar 25 modalidades esportivas distintas (**figura 1**).
Três esportes se destacam como os mais comuns entre os participantes, seja como atividade esportiva principal ou secundária.
Quando incluímos todos os atletas que praticam as modalidades esportivas sem considerar a atividade principal ou secundária temos
o futebol (N = 148),
a corrida (N = 81)
e a musculação (N = 70).

![**Figura 1** Prevalência dos esportes nos atletas com pubalgia](../figures/esp_prev.png)

As três modalidades globalmente mais comuns são também as selecionadas mais tipicamente tanto como esporte principal quanto como esporte secundário.
Quando consideradas apenas as modalidades principais dos atletas, o futebol foi selecionado como atividade principal por
129 atletas,
enquanto que a corrida e a musculação foram selecionadas por
43 e
16 atletas, respectivamente.
Juntas estas três modalidades esportivas representam
76.7%
da amostra (188 de 245).
As três modalidades mais selecionadas pelos atletas como esportes secundários ou acessórios são
a musculação (N = 54),
a corrida (N = 38)
e o futebol (N = 19).
Juntas estas três modalidades representam
66.1%
dos esportes secundários dos atletas com pubalgia
(111 de 168).

### Atividades auxiliares dos praticantes de futebol



As duas modalidades esportivas mais praticadas como atividade auxiliar pelos participantes com pubalgia atlética que praticam primariamente o futebol são a
musculação (N = 32)
e a corrida (N = 22).
Juntos estas duas modalidades representam
66.7%
dos esportes secundários dos atletas com pubalgia (54 de 81).

![**Figura 2** Esportes auxiliares ao futebol](../figures/esp_sec_fut.png)

### Atividades auxiliares dos praticantes de corrida



As duas modalidades esportivas mais praticadas como atividade auxiliar pelos participantes com pubalgia atlética que praticam primariamente a corrida são a
musculação (N = 9)
e futebol (N = 8).
Juntos estas duas modalidades representam
58.6%
dos esportes secundários dos atletas com pubalgia (17 de 29).

![**Figura 3** Esportes auxiliares à corrida](../figures/esp_sec_corr.png)

### Atividades auxiliares dos praticantes de musculação



As duas modalidades esportivas mais praticadas como atividade auxiliar pelos participantes com pubalgia atlética que praticam primariamente o futebol são a
musculação (N = 5)
e a corrida (N = 3).
Juntos estas duas modalidades representam
57.1%
dos esportes secundários dos atletas com pubalgia (8 de 14).

![**Figura 4** Esportes auxiliares à musculação](../figures/esp_sec_musc.png)

## Características de dor



243 participantes alegaram que a dor interfere em sua prática esportiva (99.2%).
A **figura 5** mostra a proporção de participantes que sente dor em cada um dos locais avaliados neste estudo.
65 (26.5%) participantes relataram sentir dor em um único local, enquanto 110, 48, 15 sentem dor em dois, três e quatro locais respectivamente (o que corresponde a 44.9%, 19.6%, 6.1% do total, respectivamente).
4 (1.6%) participantes sentem dor nos 5 locais.
A **figura 6** mostra o número de participantes que sente dor em cada movimento avaliado neste estudo.
45 participantes (18.4%) sentem dor em algum dos movimentos avaliados, enquanto 81, 55, 30 sentem dor em dois, três e quatro movimentos respectivamente (o que corresponde a 33.1%, 22.4%, 12.2% do total, respectivamente).
30 (12.2%) participantes sentem dor nos cinco movimentos.

<!-- **DESCREVER** -->

<!-- 1. N de participantes em que a dor interfere na prática esportiva: 243 -->
<!-- 1. % de participantes em que a dor interfere na prática esportiva: 99.2% -->
<!-- 1. N de movimentos em que participantes sentem (1 movimento, a todos os 5 movimentos): 45, 81, 55, 30, 30 -->
<!-- 1. % de movimentos em que participantes sentem (1 movimento, a todos os 5 movimentos): 18.4%, 33.1%, 22.4%, 12.2%, 12.2% -->
<!-- 1. N de locais em que participantes sentem (1 local, a todos os 5 locais): 65, 110, 48, 15, 4, 3 -->
<!-- 1. % de locais em que participantes sentem (1 local, a todos os 5 locais): 26.5%, 44.9%, 19.6%, 6.1%, 1.6%, 1.2% -->

<!-- Observações: -->

<!-- - itens 3 e 4: Em quantos movimentos cada participante avaliado sente dor? (resultado que complementa a fig 6) -->
<!-- - itens 5 e 6: Em quantos locais cada participante avaliado sente dor? (resultado que complementa a fig 5) -->

![**Figura 5** Locais do púbis em que o participante sente dor](../figures/desc_local.png)

![**Figura 6** Movimentos da prática esportiva em que o participante sente dor](../figures/desc_movim.png)

## Performance dos exames físicos

A **tabela 1** mostra os resultados dos dez exames físicos (EF) administrados nos participantes do estudo.
Cinco exames (EF1, EF6, EF8, EF9 e EF10) demonstraram ser piores que o acaso para detectar a pubalgia presente nos participantes, obtendo resultado positivo em menos de 50% dos casos.
Dois exames, por outro lado, tiveram desempenho considerado alto.
Os exames EF2, EF4 demonstraram resultado positivo em 70% ou mais dos casos.


|    &nbsp;    |  Overall   |
|:------------:|:----------:|
|    **n**     |    245     |
| **EF1 (%)**  | 77 (31.4)  |
| **EF2 (%)**  | 188 (76.7) |
| **EF3 (%)**  | 166 (67.8) |
| **EF4 (%)**  | 190 (77.6) |
| **EF5 (%)**  | 153 (62.4) |
| **EF6 (%)**  | 102 (41.6) |
| **EF7 (%)**  | 168 (68.6) |
| **EF8 (%)**  | 71 (29.0)  |
| **EF9 (%)**  | 37 (15.1)  |
| **EF10 (%)** | 120 (49.0) |

Table: **Tabela 1** Performance dos 10 exames físicos para detectar a pubalgia nos atletas estudados.

EF1 = Compressão ortostática do compartimento anterior;  
EF2 = Flexão simultânea do Quadril e do Abdômen contra resistência;  
EF3 = Contração dos adutores contra resistência com joelho em flexão;  
EF4 = Contração dos adutores contra resistência com joelho em extensão;  
EF5 = Palpação do anel inguinal;  
EF6 = Palpação do corpo do Púbis;  
EF7 = Palpação da inserção do Adutor no Púbis;  
EF8 = Flexibilidade dos isquiotibiais (Encurtamento posterior);  
EF9 = Arco de movimento do quadril (Limiração da RI);  
EF10 = Teste dos Oblíquos contra resistência (Manobra de Grava).

<!-- # Exceções e Desvios do teste -->

# Discussão

Esta série de casos avaliou as distribuições dos esportes praticados por atletas com pubalgia em 25 modalidades desportivas, tanto como esporte principal como atividade secundária ou acessória (**figura 1**).
Não é surpreendente que, no Brasil, o futebol seja o esporte mais praticado pelos pacientes atendidos com pubalgia.
Neste estudo, no entanto, os atletas que demonstraram preferência por este esporte são não somente mais frequentes, mas também são os que mais praticam outras atividades (**figuras 2**, **3** e **4**).
A discrepância na opção por atividades acessórias é marcante:
81 jogadores de futebol relataram praticar atividades secundárias,
enquanto que os dados de atletas de corrida e musculação são consideravelmente (29 e 14, respectivamente).

A dor foi relatada com maior frequência nas regiões inguinal e adutora e o Púbis linha média (**figura 5**).
A troca de direção, tiros e chutes foram os movimentos com maior prevalência de dor (**figura 6**).
Estes três movimentos têm em comum o uso de força explosiva, comparada à corrida longa.
Não é evidente porém a que haja relação de causa e efeito neste tipo de movimento uma vez que o salto, que compartilha esta característica, foi o movimento com menor ocorrência de dor em nossa amostra.
São necessários outros estudos independentes para confirmar as prevalências de pubalgia atlética aqui relatadas.

Avaliações clínicas podem ser ferramentas úteis no diagnóstico precoce da pubalgia.
Nossas observações indicam que dois dos exames físicos avaliados (EF2 e EF4) são propostas promissoras apresentando resultados positivos, respectivamente, 77% e 78% dos casos.
Para confirmar esta hipótese, é necessário um estudo da capacidade discriminatória destes procedimentos a fim de estimar sua sensibilidade e especificidade.
Para determinar a metodologia mais adequada de avaliar estes exames, é necessário inicialmente definir o escopo de sua aplicação, se como diagnóstico inicial (*screening*), ou diagnóstico confirmatório.

# Conclusões


# Referências

# Apêndice

