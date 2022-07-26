
library(readxl)

rm(list = ls())
options(scipen = 999)

datos <- read_excel("excelbigdataproblema2.xlsx")



calculosueldos <- function(datos){
  sueldo <- 600000
  ventas <- datos$total
  trabajadores <- datos$Trabajador
  ventas_juan <- c()
  ventas_pedro <- c()
  ventas_diego <- c()
  ventas_hugo <- c()
  ventas_luis <- c()
  
  for (i in 1:length(ventas)) {
    if (trabajadores[i] == "Juan" ) {
      ventas_juan <- c(ventas_juan, ventas[i])
    }
  }
  sumaventas_juan <- sum(ventas_juan)
  
  
  ################
  
  for (i in 1:length(ventas)) {
    if (trabajadores[i] == "Pedro" ) {
      ventas_pedro <- c(ventas_pedro, ventas[i])
    }
  }
  sumaventas_pedro <- sum(ventas_pedro)
  
  
  ###########
  for (i in 1:length(ventas)) {
    if (trabajadores[i] == "Diego" ) {
      ventas_diego <- c(ventas_diego, ventas[i])
    }
  }
  sumaventas_diego <- sum(ventas_diego)
  
  ###########
  
  for (i in 1:length(ventas)) {
    if (trabajadores[i] == "Hugo" ) {
      ventas_hugo <- c(ventas_hugo, ventas[i])
    }
  }
  sumaventas_hugo <- sum(ventas_hugo)
  
  ###########
  
  for (i in 1:length(ventas)) {
    if (trabajadores[i] == "Luis" ) {
      ventas_luis <- c(ventas_luis, ventas[i])
    }
  }
  sumaventas_luis <- sum(ventas_luis)
  
  ###########
  
  if (sumaventas_juan >= 7200000) {
    sueldo_juan <- sueldo * 1.15
    print(paste("Las ventas de Juan son ", sumaventas_juan,"por lo que tiene comision, su sueldo es ",sueldo_juan ))
  } else{
    sueldo_juan <- sueldo
    print(paste("Las ventas de Juan son ", sumaventas_juan,"por lo que no tiene comision, su sueldo es ",sueldo_juan ))
  }
  if (sumaventas_pedro >= 7200000) {
    sueldo_pedro <- sueldo* 1.15
    print(paste("Las ventas de Pedro son ", sumaventas_pedro,"por lo que tiene comision, su sueldo es ",sueldo_pedro ))
  } else{
    sueldo_pedro <- sueldo
    print(paste("Las ventas de Pedro son ", sumaventas_pedro,"por lo que no tiene comision, su sueldo es ",sueldo_pedro ))
  }
  if (sumaventas_diego >= 7200000) {
    sueldo_diego <- sueldo* 1.15
    print(paste("Las ventas de Diego son ", sumaventas_diego,"por lo que tiene comision, su sueldo es ",sueldo_diego ))
  } else{
    sueldo_diego <- sueldo
    print(paste("Las ventas de Diego son ", sumaventas_diego,"por lo que no tiene comision, su sueldo es ",sueldo_diego ))
  }
  if (sumaventas_hugo >= 7200000) {
    sueldo_hugo <- sueldo * 1.15
    print(paste("Las ventas de Hugo son ", sumaventas_hugo,"por lo que tiene comision, su sueldo es ",sueldo_hugo ))
  } else{
    sueldo_hugo <- sueldo
    print(paste("Las ventas de Hugo son ", sumaventas_hugo,"por lo que no tiene comision, su sueldo es ",sueldo_hugo ))
  }
  if (sumaventas_luis >= 7200000) {
    sueldo_luis <- sueldo* 1.15
    print(paste("Las ventas de Luis son ", sumaventas_luis,"por lo que tiene comision, su sueldo es ",sueldo_luis ))
  } else{
    sueldo_luis <- sueldo
    print(paste("Las ventas de Luis son ", sumaventas_luis,"por lo que no tiene comision, su sueldo es ",sueldo_luis ))
  }
  
}


calculosueldos(datos)
