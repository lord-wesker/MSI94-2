# Leer el conjunto de datos 'mtcars'
# data("mtcars");
mtcars<- read_csv('./mtcars.csv')

mtcars

# Calcular la media de la columna 'mpg'
media_mpg <- mean(mtcars$mpg)

# Imprimir el resultado
print(media_mpg)


write.csv(mtcars, file = 'mtcars.csv', row.names = FALSE)

write_csv(mtcars, "./mtcars_write.csv")

# rm -> Remove
# Calcular la media sin tener en cuenta los valores faltantes
media_no_na = mean(mtcars$mpg, na.rm = TRUE)

# Imprimir el resultado
print(media_no_na)

# Si solo quiere mantener las filas que tienen valores coincidentes en ambos dataframes, ¿cuál tipo de unión (join) usaría?
# Para realizar un "inner join", podemos usar la función merge() especificando los dataframes y la columna en común para la fusión:
inner_join <- merge(dataframe_a, dataframe_b, by = "columna_comun")

# mantener todas las filas de ambos dataframes, rellenando con NA donde no haya coincidencias
# Para realizar un "outer join", podemos usar la función merge() con el argumento all = TRUE
outer_join <- merge(dataframe_a, dataframe_b, by = "columna_comun", all = TRUE)

# Convertir la columna 'cyl' a factor
mtcars$cyl_factor <- as.factor(mtcars$cyl)

# Mostrar los niveles del factor 'cyl'
niveles_cyl <- levels(mtcars$cyl_factor)
print(niveles_cyl)

# Calcular el logaritmo base 10 de la columna 'drat'
mtcars$drat_log10 <- log10(mtcars$drat)

# Mostrar las primeras filas del dataset con la nueva columna
head(mtcars)

# Crear una nueva columna 'cyl_label' basada en 'cyl'
mtcars$cyl_label <- ifelse(mtcars$cyl == 4, "bajos", ifelse(mtcars$cyl == 6, "medianos", "altos"))

# Mostrar las primeras filas del dataset con la nueva columna
head(mtcars)

# Ordenar el dataset 'mtcars' por la columna 'mpg' en orden descendente
# tambien puede usarse el parametro 'decreasing'
# mtcars_descendente <- mtcars[order(mtcars$mpg, decreasing = TRUE), ]
mtcars_descendente <- mtcars[order(-mtcars$mpg), ]

# Mostrar las primeras filas del dataset ordenado
head(mtcars_descendente)

# Crear un nuevo dataframe con las condiciones especificadas
nuevo_mtcars <- mtcars[mtcars$mpg > 20 & mtcars$hp > 100, ]

# Mostrar el nuevo dataframe
print(nuevo_mtcars)

# Cambiar el nombre de la columna 'hp' a 'horse_power'
colnames(mtcars)[colnames(mtcars) == "hp"] <- "horse_power"

# Mostrar las primeras filas del dataframe con el nuevo nombre de columna
head(mtcars)

# Crear subconjunto de carros con 4 cilindros
subconjunto_4_cilindros <- mtcars[mtcars$cyl == 4, ]

# Crear subconjunto de carros con 6 cilindros
subconjunto_6_cilindros <- mtcars[mtcars$cyl == 6, ]

# Combinar ambos subconjuntos en un solo dataframe con rbind ya que ambos dataframes contienen las mismas variables y tienen la misma estructura
subconjunto_combinado <- rbind(subconjunto_4_cilindros, subconjunto_6_cilindros)

# Mostrar las primeras filas del dataframe combinado
head(subconjunto_combinado)


