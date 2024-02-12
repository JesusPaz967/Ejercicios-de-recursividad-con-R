#4. Buscar un elemento de un array de forma recursiva.
buscar <- function(arr,target,indice=1){
    if(length(arr)==0) {
       return(0)
    }
    if(arr[1]==target) {
       return(indice)
    }
    return(buscar(arr[-1],target,indice+1))
}

lista<- c(1,2,3,5,4,6,7,8)
busqueda<-5
posicion<-buscar(lista,busqueda)

if (posicion>0) {
   print("Elemento encontrado")
   print(paste("Elemento se encuentra en la posicion ",posicion))
}else {
   print("Elemento no encontrado")
}