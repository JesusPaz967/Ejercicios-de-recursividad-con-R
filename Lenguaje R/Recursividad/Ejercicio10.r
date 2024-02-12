#10. Haz una función que obtenga el máximo numero de un array, pasándole el array, el indice y el numero máximo actual.
numero_maximo <- function(arr, indice, actual) {
  if (indice > length(arr)) {
    return(actual)
  }
  
  if (arr[indice] > actual) {
    actual <- arr[indice]
  }
  
  return(numero_maximo(arr, indice + 1, actual))
}

input <- readline(prompt = "Ingrese la lista de números separados por comas: ")
arr <- as.numeric(strsplit(input, ",")[[1]])
indice <- as.integer(readline(prompt = "Ingrese el índice inicial: "))
actual <- as.numeric(readline(prompt = "Ingrese el valor inicial: "))
#si no era con ingreso por teclado aqui estan predefinido
#arr <- c(12,23,34,1,24,2,7)
#indice <- 1
#actual<- 1

num <- numero_maximo(arr, indice, actual)

print(num)

# Otra función sin que sea necesario el tercer parámetro.
numero_maximo <- function(arr, indice) {
  if (indice > length(arr)) {
    stop("Lista vacia")
  }
  
  max_actual <- arr[indice]
  
  if (indice < length(arr)) {
    restante <- numero_maximo(arr, indice+ 1)
    if (restante > max_actual) {
       max_actual <- restante
    }
  }
  
  return( max_actual)
}

input <- readline(prompt = "Ingrese la lista de números separados por comas: ")
arr <- as.numeric(strsplit(input, ",")[[1]])
indice <- as.integer(readline(prompt = "Ingrese el índice inicial: "))
#si no era con ingreso por teclado aqui estan predefinido
#arr <- c(12,23,34,1,24,2,7)
#indice <- 1

num <- numero_maximo(arr, indice)
print(num)
