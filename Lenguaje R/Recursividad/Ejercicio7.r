#7. Invertir una palabra de forma recursiva.
invertir_palabra <- function(palabra) {
  if (nchar(palabra) <= 1) {
    return(palabra)
  } else {
    caracter <- substring(palabra, nchar(palabra), nchar(palabra))
    pal <- substring(palabra, 1, nchar(palabra) - 1)
    return(paste(caracter, invertir_palabra(pal), sep = ""))
  }
}
#por si quiere la palabra predefinida
#palabra <- "esternocleidomastoideo"
palabra <- readline(prompt = "Ingresar palabra: ")
palabra_invertida <- invertir_palabra(palabra)
print(palabra_invertida)
