object tom {
    var energia = 50

    method comer(unRaton){
        energia += 12 + unRaton.peso()
    }

    method correrDistancia(distancia) {
        energia -= distancia / 2
    }

    method velocidadMax(){
        return 5 + energia/10
    }

    method energia() {
        return energia
    }

    method puedeCazar(distancia) {
        return energia > distancia / 2 
    }

    method cazarRaton(distancia,unRaton) {
        if (self.puedeCazar(distancia)){
            self.correrDistancia(distancia)
            self.comer(unRaton)
        }
    }


}

object jerry {
  var edad = 2

  method edad() {
    return edad
  }

  method cumplirAnios() {
     edad += 1
  }

  method peso() {
    return edad * 20
  }

}

object nibbles { method peso() {return 35} }

object speedy {
    var peso = 20

    method peso() {
        return peso
    }

    method comerQueso() {
        peso = peso * 1.5
    }
}


