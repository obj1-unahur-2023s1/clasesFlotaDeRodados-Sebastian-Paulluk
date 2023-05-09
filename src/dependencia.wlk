import rodados.*


class Dependencia {
	const flota = []
	var property empleados
	
	method capacidadFlota() =flota.sum( {r => r.capacidad()} )
	
	method agregarAFlota(unRodado) = flota.add(unRodado)
	method quitarDeFLota(unRodado) = flota.remove(unRodado)
	method pesoTotalDeFlota() = flota.sum( {r => r.peso()} )
	method estaBienEquipada() = flota.size() >= 3 && flota.all( {r => r.velocidad() >= 100} )
	method capacidadTotalEnColor(color) = flota.filter( {r => r.color() == color} ).sum( {r => r.capacidad()} )
	method colorDelRodadoMasRapido() = flota.max( {r => r.velocidad()} ).color()
	method capacidadFaltante() = 0.max(empleados - self.capacidadFlota())
	method esGrande() = empleados >= 40 && flota.size() >=5
}