#8. Calcula la potencia de un numero de forma recursiva, tanto para exponentes negativos como positivos.
potencia<- function(base, exponente) {
  if (exponente == 0) {
    return(1)
  } else if (exponente > 0) {
    return(base * potencia(base, exponente - 1))
  } else {
    return(1 / potencia(base, -exponente))
  }
}


base <- as.numeric(readline("Ingrese la base: "))
exponente <- as.numeric(readline("Ingrese el exponente: "))
resultado <- potencia(base, exponente)
print(resultado)
