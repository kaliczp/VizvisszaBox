## Csomag telepítés (ha kell) és betöltés
## install.packages("readxl")
library(readxl)

## Beolvasás
## A dátum, az nem kell, B-U - ig a boxplot alapanyagok, 2-58-ig fejléccel
rawkut <- as.data.frame(read_excel("boxplotok vs távolság2.xlsx", range = "B2:U58"))
## Ha gond a számokkal
## colnames(rawkut) <- as.numeric(colnames(rawkut))

## Felirat a tetejére
rawnev <- as.data.frame(read_excel("boxplotok vs távolság2.xlsx", range = "B1:U2"))

## Boxplot
par(mar= c(3.1,3.1,3.1,1.1), las = 2)
boxplot(rawkut)
axis(2,0,tck=1)
axis(3, at = 1:20, labels = colnames(rawnev))
