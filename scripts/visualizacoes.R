source('scripts/input.R', encoding = 'UTF-8')
library(ggplot2)
library(scales)

ff.col <- "steelblue" # good for single groups scale fill/color brewer
ff.pal <- "Paired"    # good for binary groups scale fill/color brewer

# Theme setting (less is more)
theme_set(
  theme_classic()
)
theme_update(
  legend.position = "top"
)

# ggplot(esportes[PRINCIPAL==1], aes(reorder(ESPORTE, ESPORTE, function(x) length(x)))) +
# esp.princ <- ggplot(esportes[PRINCIPAL==1], aes(reorder(ESPORTE, ESPORTE, length))) +
#   geom_bar(fill = ff.col) +
#   xlab("Esporte") + ylab("") +
#   ylim(c(0, 150)) +
#   coord_flip() +
#   ggtitle("Esporte principal")

# esp.sec <- ggplot(esportes[PRINCIPAL==0], aes(reorder(ESPORTE, ESPORTE, length ))) +
#   geom_bar(fill = ff.col) +
#   xlab("Esporte") + ylab("") +
#   ylim(c(0, 150)) +
#   coord_flip() +
#   ggtitle("Esporte secundário")

#ordem alfabática
# esp.princ.sec <- ggplot(esportes, aes(factor(esportes$ESPORTE, levels(esportes$ESPORTE)[25:1]), fill = PRINCIPAL)) +

# ordem de prevalência (Pareto)
esp.prev <- ggplot(esportes, aes(reorder(ESPORTE, ESPORTE, length), fill = PRINCIPAL)) +
  geom_bar() +
  labs(x = "Esporte principal", y = "") +
  # scale_color_brewer(palette = ff.pal) +
  scale_fill_brewer(palette = ff.pal) +
  coord_flip() +
  # ggtitle("") +
  theme(legend.position = "bottom", legend.title = element_blank())

# ggplot(participantes[`ESPORTE 1` == "FUTEBOL" & !is.na(`ESPORTE 2`)], aes(reorder(`ESPORTE 2`, `ESPORTE 2`, length))) +
#   geom_bar(fill = ff.col) +
#   xlab("Esporte") +
#   coord_flip()+
#   ggtitle("Esporte acessório quando o principal é futebol")

ids.futebol <- esportes[PRINCIPAL == "Principal" & ESPORTE == "FUTEBOL"]$ID
ids.futebol <- as.numeric(levels(ids.futebol)[ids.futebol])
ids.corrida <- esportes[PRINCIPAL == "Principal" & ESPORTE == "CORRIDA"]$ID
ids.corrida <- as.numeric(levels(ids.corrida)[ids.corrida])
ids.musculacao <- esportes[PRINCIPAL == "Principal" & ESPORTE == "MUSCULAÇÃO"]$ID
ids.musculacao <- as.numeric(levels(ids.musculacao)[ids.musculacao])

esp.sec.fut <- ggplot(esportes[ID %in% ids.futebol & PRINCIPAL == "Secundário"], aes(reorder(ESPORTE, ESPORTE, length))) +
  geom_bar(fill = ff.col) +
  labs(x = "Esporte acessório quando o principal é futebol", y = "") +
  # scale_color_brewer(palette = ff.pal) +
  scale_fill_brewer(palette = ff.pal) +
  ylim(c(0, 40)) +
  coord_flip()+
  ggtitle("")

esp.sec.corr <- ggplot(esportes[ID %in% ids.corrida & PRINCIPAL == "Secundário"], aes(reorder(ESPORTE, ESPORTE, length))) +
  geom_bar(fill = ff.col) +
  labs(x = "Esporte acessório quando o principal é corrida", y = "") +
  ylim(c(0, 40)) +
  # scale_color_brewer(palette = ff.pal) +
  scale_fill_brewer(palette = ff.pal) +
  coord_flip()+
  ggtitle("")

esp.sec.musc <- ggplot(esportes[ID %in% ids.musculacao & PRINCIPAL == "Secundário"], aes(reorder(ESPORTE, ESPORTE, length))) +
  geom_bar(fill = ff.col) +
  labs(x = "Esporte acessório quando o principal é musculação", y = "") +
  ylim(c(0, 40)) +
  # scale_color_brewer(palette = ff.pal) +
  scale_fill_brewer(palette = ff.pal) +
  coord_flip()+
  ggtitle("")

desc.idade <- ggplot(participantes, aes(IDADE.cat)) +
  geom_bar(fill = ff.col) +
  # scale_color_brewer(palette = ff.pal) +
  scale_fill_brewer(palette = ff.pal) +
  xlab("Idade") + ylab("Número de Participantes") +
  theme(legend.position = "bottom")

desc.nivel <- ggplot(participantes, aes(NIVEL)) +
  geom_bar(fill = ff.col) +
  # scale_color_brewer(palette = ff.pal) +
  scale_fill_brewer(palette = ff.pal) +
  xlab("Nível de dedicação") + ylab("Número de Participantes") +
  theme(legend.position = "bottom")

desc.freq <- ggplot(participantes, aes(FREQ.cat)) +
  geom_bar(fill = ff.col) +
  # scale_color_brewer(palette = ff.pal) +
  scale_fill_brewer(palette = ff.pal) +
  xlab("Treinos por semana") + ylab("Número de Participantes") +
  theme(legend.position = "bottom")

desc.interf <- ggplot(participantes, aes(INTERFERE)) +
  geom_bar(fill = ff.col) +
  # scale_color_brewer(palette = ff.pal) +
  scale_fill_brewer(palette = ff.pal) +
  xlab("Interfere na atividade") + ylab("Número de Participantes") +
  theme(legend.position = "bottom")

desc.sexo <- ggplot(participantes, aes(SEXO)) +
  geom_bar(fill = ff.col) +
  # scale_color_brewer(palette = ff.pal) +
  scale_fill_brewer(palette = ff.pal) +
  xlab("Sexo") + ylab("Número de Participantes") +
  theme(legend.position = "bottom")

desc.movim <- ggplot(movim, aes(reorder(MOVIMENTO, MOVIMENTO, length))) +
  geom_bar(aes(y = (..count..)/sum(..count..)), fill = ff.col) +
  scale_y_continuous(labels=label_percent(accuracy=1), limits = c(0, .4)) +
  # scale_color_brewer(palette = ff.pal) +
  scale_fill_brewer(palette = ff.pal) +
  xlab("Movimento em que sente dor") + ylab("") +
  coord_flip() +
  theme(legend.position = "bottom")

desc.local <- ggplot(locais, aes(reorder(LOCAL, LOCAL, length))) +
  geom_bar(aes(y = (..count..)/sum(..count..)), fill = ff.col) +
  scale_y_continuous(labels=label_percent(accuracy=1), limits = c(0, .4)) +
  # scale_color_brewer(palette = ff.pal) +
  scale_fill_brewer(palette = ff.pal) +
  xlab("Local em que sente dor") + ylab("") +
  coord_flip() +
  theme(legend.position = "bottom")
