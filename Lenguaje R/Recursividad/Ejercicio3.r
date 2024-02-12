#Recorrer un vector de forma recursiva.
recursivo <- function(vector) {
   n=length(vector)
   if (n<=0){
   return(vector)
   }else {
   print(vector[c(n)])
   return(recursivo(vector[-c(n)]))
  }
}
recursivo(c(1,2,c(3,4),5,c(6,c(7,8),9)))


