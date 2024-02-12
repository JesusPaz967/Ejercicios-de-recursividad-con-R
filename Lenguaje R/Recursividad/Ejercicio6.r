#6. Invertir un numero de forma recursiva (no usar String)
re_invertir <- function(n) {
  if (n < 10) {
    return(n)
  } else {
    ndig <- floor(log10(n)) + 1
    return((n %% 10) * 10^(ndig - 1) + re_invertir(n %/% 10))
  }
}

valores<- as.numeric(readline("Ingrese los valores: "))
invertir_val <- re_invertir(valores)
print(invertir_val)
