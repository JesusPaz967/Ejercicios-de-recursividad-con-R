
quicksort_cont <-function(vector){
    if(length(vector)<=1) return(vector)#verificamos si tiene longituf menor o igual a 1
    pivot <- vector[1]#asignamos el primer elemento como pivote
    rest <- vector[-1]##crea un nuevo vector que contiene todos los elementos del vector ,sin contar el pivote
    cont_comp <<- cont_comp +length(rest)#actualizamos el contador de comparacion sumando la longitud del vector(rest)
    cont_inter <<- cont_inter +sum(rest>pivot)#actualizamos el contador de intercambio sumando la cantidad de elementos del rest que son mayores que el pivot
    c(quicksort_cont(rest[rest>pivot]),pivot,quicksort_cont(rest[rest<=pivot]))#llamamos recursivamente a nuestra funcion para ordenar los subvectores 
    
}

cont_comp <- 0
cont_inter <- 0


vect<- sample(1:200,100)
print(sort(vect,decreasing=TRUE))
quicksort_cont(vect)#Llama a la funcion
print(paste("Numero de comparaciones: ", cont_comp))
print(paste("Numero de intercambios: ", cont_inter))