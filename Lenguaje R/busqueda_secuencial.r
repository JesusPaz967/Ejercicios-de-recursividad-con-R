numeros <- sample(x= 1:200,size=100, replace=TRUE)
b<- function(listaN){
    n<- length(listaN)
    cont_comp <-0
    cont_inter <-0
   
    for(i in 1:(n-1)){
        for(j in 1:(n-i)){
            cont_comp <- cont_comp +1
            if(listaN[j] < listaN[j+1]){
                cont_inter <- cont_inter +1
                tmp<- listaN[j]
                listaN[j]<- listaN[j+1]
                listaN[j+1] <- tmp
            }
        }
    }
    print(paste("Numero de comparaciones: ", cont_comp))
    print(paste("Numero de intercambios: ", cont_inter))
    return(listaN)
}
busqueda_secu<- function(listaN,element) {#toma  2 argumentos para la funcion
    n<-length(listaN)
    procesos <- 0
    for (i in 1:n) {#crea un bucle hasta que itera desde el 1 hasta la longitud de toda la lista
    procesos <- procesos+1
    Sys.sleep(0.5)
       if (listaN[i] == element) {
          return(c(i,procesos))#verifica si el elemento actual es igual al elemento que se busca
       }
    }
    return(-1,procesos)#si no se encuentra nada devuelve -1
}
Nordenados <- b(numeros)
print(Nordenados)
while(TRUE){
buscar <- readline(prompt="Ingrese el numero a buscar:")#ingreso por teclado
#buscar <- 7
procesos_realizados <- 0
indice_encontrado <- -1
time_init <- Sys.time()
while(Sys.time() - time_init<1){
    resultado_busqueda <- busqueda_secu(Nordenados,buscar)#llamar funcion :v
    indice_encontrado <- resultado_busqueda[[1]]
    procesos_realizados <- procesos_realizados + resultado_busqueda[2]
    if (indice_encontrado != -1) {
       break
    }
}

if (indice_encontrado != -1) {
   print(paste("El elemento ", buscar,"se encuentra en el indice ",indice_encontrado))
    print(paste("La cantidad de procesos es: ", procesos_realizados))
}else {
   print(paste("El elemento ", buscar,"no se encuentra en el indice"))
    print(paste("La cantidad de procesos es: ", procesos_realizados))
}}
