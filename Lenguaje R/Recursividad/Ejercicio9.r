#9. Suma los digitos de un numero de forma recursiva.
sumar_digitos<- function(n) {
  if (n < 10) {
    return(n)
  } else { 
    final_de_numero<- n %% 10
    demas<- n%/% 10
    return(final_de_numero + sumar_digitos(demas))
  }
}

n <- as.numeric(readline("Ingrese el numero: "))
suma <- sumar_digitos(n)
print(suma)