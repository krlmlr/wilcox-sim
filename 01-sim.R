library(tidyverse)

#set.seed(123456)

N <- 25

control <- rnorm(N, -10, 70)
music <- rnorm(N, 10, 40)
speech <- rnorm(N, 15, 100)

control_tbl <- tibble(dd = control, type = "control")
music_tbl <- tibble(dd = music, type = "music")
speech_tbl <- tibble(dd = speech, type = "speech")

tbl <- bind_rows(control_tbl, music_tbl, speech_tbl)

# ggplot(tbl, aes(x = type, y = dd)) +
#   geom_boxplot()

wilcox.test(control, alternative = "less")
wilcox.test(music, alternative = "greater")
wilcox.test(speech, alternative = "greater")

wilcox.test(control, music, alternative = "less")
wilcox.test(control, speech, alternative = "less")
wilcox.test(music, speech)
