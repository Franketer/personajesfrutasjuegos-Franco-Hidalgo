//Colores

object verde {
	
}

object naranja {
	
}

object amarillo {
	
}

object rojo {
	
}


//Frutas


object manzana {
	var color = verde
	
	method color() = color
	method peso() = 150
	method esGrande() = self.peso() > 70
	method esVerde() = color == verde
	method esRojo() = color == rojo
	method energiaQueProvee() {
		if  (self.esVerde()) return 5
		else return 14
	}
	method madurar() {
		color = rojo
	}
}

object mandarina {
	var peso = 60
	
	method color() = naranja
	method peso() = peso
	method esGrande() = self.peso() > 70
	method esVerde() = false
	method esRojo() = false
	method energiaQueProvee() {
		if  (self.esGrande()) return 10
		else return 3
	}
	method madurar() {
		if (peso == 60) peso = peso * 1.4
	}
}

object banana {
	
	method color() = amarillo
	method peso() { }
	method esGrande() = false
	method esVerde() = false
	method esRojo() = false
	method energiaQueProvee() = 5
	method madurar() {
		
	}
}


// Deporte


object voley {
	
	method esJugadoPor(persona) { 
		if (persona.comproBanana()) {
			persona.restarEnergia(12)
		}
		else {
			if (persona.comproMandarina()) {
				persona.restarEnergia(8)
			}
			else {
				persona.restarEnergia(5)
			}
		}
	}
}

object futbol {
	
	method esJugadoPor(persona) {
		if (not persona.tieneBajaEnergia()) persona.restarEnergia(10)
		else persona.restarEnergia(4)
	}
}

object basquet {
	
	method esJugadoPor(persona) {
		persona.restarEnergia(3)
	}
}


//Personajes


object martin {
	var edad = 14
	var energia = 15
	var vecesQueHizoDeporte = 0
	var frutaComprada 
	
	method edad() = edad
	method energia() = energia
	method frutaComprada() = frutaComprada
	method comproManzana() = frutaComprada == manzana
	method comproMandarina() = frutaComprada == mandarina
	method comproBanana() = frutaComprada == banana
	method restarEnergia(cant) {
		if (energia - cant >= 0) {
			energia = energia - cant
		}
		else energia = 0
	}
	method esAdulto() = edad >= 18
	method hacerDeporte(unDeporte) {
		unDeporte.esJugadoPor(self)
		vecesQueHizoDeporte = vecesQueHizoDeporte + 1
	}
	method tieneBajaEnergia() {
		return self.tieneBajaEnergiaYEsAdulto() or self.tieneBajaEnergiaYNoEsAdulto()
	}
	method tieneBajaEnergiaYEsAdulto() {
		return self.esAdulto() and energia <= 2
	}
	method tieneBajaEnergiaYNoEsAdulto() {
		return not self.esAdulto() and energia <= 5
	}
	method estaFeliz() {
		return vecesQueHizoDeporte >= 2 and not self.tieneBajaEnergia()
	}
	method cumplirAnios() {
		edad = edad + 1
	}
	method comprar(unaFruta) {
		frutaComprada = unaFruta
	}
	method hacerMadurarALaFruta() {
		frutaComprada.madurar()
	}
	method comer() {
		if (self.comproManzana() and frutaComprada.esRojo()) {
			energia = energia + frutaComprada.energiaQueProvee()
			frutaComprada = null
		}
		else {
			if (self.comproMandarina() and frutaComprada.esGrande()) {
				energia = energia + frutaComprada.energiaQueProvee()
				frutaComprada = null
			}
			else {
				if (self.comproBanana() and not self.estaFeliz()) {
					energia = energia + frutaComprada.energiaQueProvee()
					frutaComprada = null
				}
			}
		}
	}
	method esDeportista() = vecesQueHizoDeporte.even()
}

object juana {
	var energia = 45
	var endorfinas = 0
	var frutaComprada 
	
	method energia() = energia
	method endorfinas() = endorfinas
	method frutaComprada() = frutaComprada
	method comproManzana() = frutaComprada == manzana
	method comproMandarina() = frutaComprada == mandarina
	method comproBanana() = frutaComprada == banana
	method restarEnergia(cant) {
		if (energia - cant >= 0) {
			energia = energia - cant
		}
		else energia = 0
	}
	method hacerDeporte(unDeporte) {
		unDeporte.esJugadoPor(self)
		endorfinas = endorfinas + 5
	}
	method tieneBajaEnergia() = energia < 25
	method estaFeliz() = (energia / 2) < endorfinas
	method esDeportista() = self.estaFeliz() and not self.tieneBajaEnergia()
	method comprar(unaFruta) {
		frutaComprada = unaFruta
	}
}

object pepe {
	var energia = 25
	var fuerza = 0
	var peso = 80
	var frutaComprada
	
	method energia() = energia
	method fuerza() = fuerza
	method peso () = peso
	method frutaComprada() = frutaComprada
	method comproManzana() = frutaComprada == manzana
	method comproMandarina() = frutaComprada == mandarina
	method comproBanana() = frutaComprada == banana
	method restarEnergia(cant) {
		if (energia - cant >= 0) {
			energia = energia - cant
		}
		else energia = 0
	}
	method hacerDeporte(unDeporte) {
		if (fuerza + 3 <= 10) {
			fuerza = fuerza + 3
		}
		else fuerza = 10
		
		if (energia - 1 >= 0) {
			energia = energia - 1
		}
		else energia = 0
		
		if (peso - 1 >= 0) {
			peso = peso - 1
		}
		else peso = 0
	}
	method estaFeliz() = peso < 75 and fuerza > 5
	method tieneBajaEnergia() = true
	method comprar(unaFruta) {
		frutaComprada = unaFruta
	}
	method esDeportista() = true
}


//Equipo


object equipo {
	var jugadorDelanteroIzquierdo
	var jugadorDelanteroDerecho
	var jugadorDefensor
	var temporal
	var temporal2
	
	method jugadorDelanteroIzquierdo() = jugadorDelanteroIzquierdo
	method jugadorDelanteroDerecho() = jugadorDelanteroDerecho
	method jugadorDefensor() = jugadorDefensor
	method asignarJugadores(delanteroIzquierdo,delanteroDerecho,defensor) {
		jugadorDelanteroIzquierdo = delanteroIzquierdo
		jugadorDelanteroDerecho = delanteroDerecho
		jugadorDefensor = defensor
	}
	method esEquipoDeportista() {
		return jugadorDelanteroIzquierdo.esDeportista() 
			   and
			   jugadorDelanteroDerecho.esDeportista()
			   and
			   jugadorDefensor.esDeportista()
	}
	method rotarPosiciones() {
		temporal = jugadorDelanteroDerecho
		temporal2 = jugadorDefensor
		jugadorDelanteroDerecho = jugadorDelanteroIzquierdo
		jugadorDefensor = temporal
		jugadorDelanteroIzquierdo = temporal2
	}
	method jugadorConMasEnergia() {
		if (self.jugadorConMasEnergiaEntreIzqYDer().energia() >= self.jugadorConMasEnergiaEntreDerYDefensor().energia()) {
			return self.jugadorConMasEnergiaEntreIzqYDer()
		}
		else return self.jugadorConMasEnergiaEntreDerYDefensor()
	}
	method jugadorConMasEnergiaEntreIzqYDer() {
		if (jugadorDelanteroIzquierdo.energia() >= jugadorDelanteroDerecho.energia()) {
			return jugadorDelanteroIzquierdo
		}
		else return jugadorDelanteroDerecho
	}
	method jugadorConMasEnergiaEntreDerYDefensor() {
		if (jugadorDelanteroDerecho.energia() >= jugadorDefensor.energia()) {
			return jugadorDelanteroDerecho
		}
		else return jugadorDefensor
	}
}






