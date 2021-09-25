
################################################################
# Hecho con gusto por Luz Yolanda Rivera (UAEH)

# LABORATORIO - Tidy data -datos ordenados- PARTE 1,2 y 3.
################################################################
# Objetivo: Introducción práctica a los datos ordenados (o tidy data) y a las herramientas que provee el paquete tidyr.
# --------------------------------------------------------------------------------------------------------------------
# En este ejercicio vamos a:
# 1. Cargar datos (tibbles)
# 2. Converir nuestros tiblles en dataframes (para su exportación)
# 3. Exportar dataframes originales
# 4. Pivotar tabla 4a
# 5. Exportar resutltado (TABLA PIVOTANTE)
# 6. Separar y unir tablas



#############################################
#LABORATORIO: Tidy data (datos ordenados) 1 #
#############################################
#Prerrequisitos
#instalar paquete tidyverse
#install.packages("tidyverse")
install.packages("tidyverse")

#instalar paquete de datos

install.packages("remotes")
remotes::install_github("cienciadedatos/datos")
install.packages("datos")

#Cargar paquete tidyverse
library(tidyverse)

#Cargar paquete de datos
library(datos)


#tabla 1 hasta tabla 4b cinco de las tablas
#ver datos como tibble 
datos:: tabla1
datos:: tabla2
datos:: tabla3
datos:: tabla4a
datos:: tabla4b

#convertir table en data frame ver datos como dataframe 
df1<-data_frame(tabla1)
df2<-data_frame(tabla2)
df3<-data_frame(tabla3)
df4<-data_frame(tabla4a)
df5<-data_frame(tabla4b)

#exportar los dataframes originales
write.csv(df1,file = "df1.csv")
write.csv(df2,file = "df2.csv")
write.csv(df3,file = "df3.csv")
write.csv(df4,file = "df4.csv")
write.csv(df5,file = "df5.csv")


vignette("tibble")
#explicación de tibble




# Ordenar datos con la tabla4a (PIVOTAR)
t4a_PIVOTANTE= tabla4a %>% 
  pivot_longer(cols = c(`1999`, `2000`), names_to = "anio", values_to= "casos")



# Exportar resultado: tabla ordenada
write.csv(t4a_PIVOTANTE,file = "t4a_PIVOTANTE.csv")
