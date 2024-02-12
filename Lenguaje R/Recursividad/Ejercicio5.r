#5. Calcular el valor de la posición fibonacci usando recursividad.
fibonacci <- function(n) {
  if(n <= 0) {
    stop("El número debe ser mayor que 0")
  } else if(n == 1) {
    return(0)
  } else if(n == 2) {
    return(1)
  } else {
    return(fibonacci(n-1) + fibonacci(n-2))
  }
}

n <- as.integer(readline("Ingrese el número de Fibonacci: "))
resultado <- fibonacci(n)
print(paste("El resultado es:", resultado))