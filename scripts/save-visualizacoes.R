source("scripts/visualizacoes.R", encoding = 'UTF-8')

height <- 12
width <- 8
units <- "cm"

ggsave("figures/esp_prev.png", esp.prev, h=height, w=10, units = "cm")
ggsave("figures/esp_sec_fut.png", esp.sec.fut, h=height, w=width, units = "cm")
ggsave("figures/esp_sec_corr.png", esp.sec.corr, h=height, w=width, units = "cm")
ggsave("figures/esp_sec_musc.png", esp.sec.musc, h=height, w=width, units = "cm")
ggsave("figures/desc_movim.png", desc.movim, h=8, w=10, units = "cm")
ggsave("figures/desc_local.png", desc.local, h=8, w=10, units = "cm")

# resoluções de publicação ------------------------------------------------

ggsave("figures/esp_prev_1col.png", esp.prev, h=3.5, w=3.5)
ggsave("figures/esp_sec_fut_1col.png",  esp.sec.fut,  h=4, w=2.3) # w=2.3 para juntar em 3 painéis = 7
ggsave("figures/esp_sec_corr_1col.png", esp.sec.corr, h=4, w=2.3) # w=2.3 para juntar em 3 painéis = 7
ggsave("figures/esp_sec_musc_1col.png", esp.sec.musc, h=4, w=2.3) # w=2.3 para juntar em 3 painéis = 7
ggsave("figures/desc_movim_1col.png", desc.movim, h=3.5, w=3.5)
ggsave("figures/desc_local_1col.png", desc.local, h=3.5, w=3.5)

ggsave("figures/esp_prev_2col.png", esp.prev, h=3.5, w=7)
ggsave("figures/esp_sec_fut_2col.png",  esp.sec.fut,  h=4, w=7)
ggsave("figures/esp_sec_corr_2col.png", esp.sec.corr, h=4, w=7)
ggsave("figures/esp_sec_musc_2col.png", esp.sec.musc, h=4, w=7)
ggsave("figures/desc_movim_2col.png", desc.movim, h=3.5, w=7)
ggsave("figures/desc_local_2col.png", desc.local, h=3.5, w=7)
