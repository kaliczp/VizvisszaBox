## Csomag telepítés (ha kell) és betöltés
## install.packages("readxl")
library(readxl)

## Beolvasás
## A dátum, az nem kell, B-U - ig a boxplot alapanyagok, 3-58-ig
rawkut <- as.data.frame(read_excel("boxplotok vs távolság.xlsx", range = "B3:U58", col_names = FALSE))

## Oszlopnevek, excelből
colnames(rawkut) <- LETTERS[2:(ncol(rawkut)+1)]

## Boxplot
boxplot(rawkut)
axis(2,0,tck=1)
