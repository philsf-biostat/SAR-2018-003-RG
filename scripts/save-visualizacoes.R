source("scripts/visualizacoes.R", encoding = 'UTF-8')

height <- 8
width <- 8
units <- "cm"

ggsave("figures/esp_prev.png", esp.prev, h=height, w=width, units = "cm")
ggsave("figures/esp_sec_fut.png", esp.sec.fut, h=height, w=width, units = "cm")
ggsave("figures/esp_sec_corr.png", esp.sec.corr, h=height, w=width, units = "cm")
ggsave("figures/esp_sec_musc.png", esp.sec.musc, h=height, w=width, units = "cm")
ggsave("figures/desc_movim.png", desc.movim, h=height, w=width, units = "cm")
ggsave("figures/desc_local.png", desc.local, h=height, w=width, units = "cm")
