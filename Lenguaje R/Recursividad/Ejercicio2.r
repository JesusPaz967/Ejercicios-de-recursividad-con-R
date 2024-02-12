#2. Factorial de un número.
factorial <- function(n) {
    if(n==0||n==1){
        return(1)
    }else{
        return(n*factorial(n-1))
    }
}

n<-as.integer(readline("Ingresar numero: "))
resultado<-factorial(n)
print(paste("el factorial de",n," es ",resultado))