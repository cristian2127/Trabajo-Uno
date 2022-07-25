elecciones(10,5,5)

set.seed(10)
padronelectoral <- sample(c("SI","NO"),10, replace = T )
padron <- length(padronelectoral)
quorum<- length(padronelectoral)*0.5+1

votosSI<-padronelectoral[padronelectoral == "SI"]
votosNO<-padronelectoral[padronelectoral =="NO"]

votosSI<- length(votosSI)
votosNO<- length(votosNO)


elecciones <- function(padron, votosSI, votosNO) {
  quorum <- (padron/2) +1
  
  if (votosNO >= quorum){
    print("gana opcion NO")
  }else {
    print("no tiene quorum el NO")
    if (votosSI >= quorum) {
      print("gana opcion SI")
    }else {
      print("no tiene quorum el SI")
      if (votosSI < padron*0.3){
        if (votosNO <= padron*0.3) {
          print("gana la opcion NO")
        } else{
          print("gana la opcion NO")
        }
      }else {
        if (votosNO < padron*0.3) {
          print("gana la opcion SI")
        } else{
          if (votosSI > votosNO) {
            print("gana la opcion SI")
          } else {
            if (votosSI == votosNO) {
              print("hay empate")
            } else{
              print("gana el NO")
            }
          }
        }
      }
    }
  }
}
##### gana la opcion SI  #####
  

list( list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
           c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
           c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
           c("mp","Antonia"),c("mp","Christian","Mario"),
           c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
           c("of","av04","dape"),c("of","av02","arme")))



