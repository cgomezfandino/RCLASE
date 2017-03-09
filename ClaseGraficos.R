#para instalar un paquete
#install.packages('Nombre del paquete')

#para cargar el paquete
#library()

#-------------------------------------------------------------------------------------------------------

# Usando la funcion ggplot

p <- ggplot(mtcars, aes(x=mpg, y=wt, color=gear))

p + geom_point()

p + geom_point() + geom_smooth()

#-------------------------------------------------------------------------------------------------------

ggplot(diamonds, aes(price)) + geom_histogram() + facet_grid(color ~ cut) #facet_grid ponemos los ejes de donde queremos que se represente el color

ggplot(data=diamonds, aes(price)) + geom_histogram() + facet_wrap(~ color)

mtcars %>% select(-wt, -gear) %>% filter(mpg > 16, cyl == 6) -> r # operardor tuberia, lo que se hace es ir operando diferentes funciones en una sola linea

mtcars %>% mutate(mpg_per_cyl = mpg/cyl) -> t #Mutate me crea una nueva columna con las operaciones que quiera


