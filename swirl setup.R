#step 5 of swirl setup as done together in class
install.packages("swirl")
library(swirl)
install_from_swirl("R Programming Alt")
install_from_swirl("Mathematical Biostatistics Boot Camp")
swirl()


#create custom course
devtools::install_github(c("swirldev/swirl", "swirldev/swirlify"))
library(swirlify)

#When you are at the R prompt (>):| -- Typing skip() allows you to skip the current question.| -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...| -- UNTIL you type nxt() which will regain swirl's attention.| -- Typing bye() causes swirl to exit. Your progress will be saved.| -- Typing main() returns you to swirl's main menu.| -- Typing info() displays these options again.