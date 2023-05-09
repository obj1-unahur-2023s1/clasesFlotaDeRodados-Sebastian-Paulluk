import dependencia.*
import rodados.*

class Pedido{
	const property distancia
	var property tiempoMaximo
	const property cantPasajeros
	const property coloresIncompatibles = #{}
	
	method velocidadRequerida() = distancia / tiempoMaximo
	method puedeSatisfacer(unRodado) {
		return unRodado.velocidad() >= self.velocidadRequerida() + 10 &&
		unRodado.capacidad() >= cantPasajeros &&
		not coloresIncompatibles.contains(unRodado.color())
		}
		
	method agregarColorIncompatible(unColor) = coloresIncompatibles.add(unColor)
}