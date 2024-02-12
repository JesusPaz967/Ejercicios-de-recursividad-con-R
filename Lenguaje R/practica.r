#numeros <- c(40,83,77,25,98)
#generamos el vector numeros que contene las asignaciones respectivas
numeros <- sample(x= 1:200,size=100, replace=TRUE)
b<- function(listaN){#
    n<- length(listaN)#iniciamos la variable 
    cont_comp <-0#ambos solo sirven  para inicialiar el conteo desde cero
    cont_inter <-0
    #bucles anidados
    for(i in 1:(n-1)){#se realiza una iteracion desde lo establecido
        for(j in 1:(n-i)){#ambos bucles nos sirven para recorrer la lista y compararla 
            cont_comp <- cont_comp +1#nos permite incrementar la comparacion uno cada vez
            if(listaN[j] < listaN[j+1]){#verifica si el valor actual es menor que el siguiente de la lista
                cont_inter <- cont_inter +1
                tmp<- listaN[j]#el contador al incrementarse uno a uno , se realiza este intercmabio usando la variable tmp.
                listaN[j]<- listaN[j+1]
                listaN[j+1] <- tmp
            }
        }
    }
    print(paste("Numero de comparaciones: ", cont_comp))
    print(paste("Numero de intercambios: ", cont_inter))
    return(listaN)
}
Nordenados <- b(numeros)#solo llamamos la funcion :v
print(Nordenados)