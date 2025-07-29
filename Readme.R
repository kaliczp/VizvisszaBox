## Csomag telepítés (ha kell) és betöltés
## install.packages("readxl")
library(readxl)

## Beolvasás
## A dátum, az nem kell, B-U - ig a boxplot alapanyagok, 2-58-ig fejléccel
rawkut <- as.data.frame(read_excel("boxplotok vs távolság.xlsx", range = "B2:U58"))

## Felirat a tetejére
rawnev <- as.data.frame(read_excel("boxplotok vs távolság.xlsx", range = "B1:U2"))

## Boxplot
boxplot(rawkut)
axis(2,0,tck=1)
