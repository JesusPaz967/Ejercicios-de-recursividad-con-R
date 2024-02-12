#1. Sumar los números números naturales hasta N (se lo damos nosotros) de forma recursiva.
numeros_narutales <- function(N){
    if(N<=0){
        return(0)
    }else{
        return(N+numeros_narutales(N-1))
    }
}

N<-as.integer(readline("Ingresar numero: "))
resultado <- numeros_narutales(N)
print(paste("La suma de los numeros naturales de ",N," es ",resultado))