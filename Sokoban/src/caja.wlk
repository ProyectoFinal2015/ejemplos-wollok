
class Caja {
	var posicion
	var llegadas
	
	new(_posicion, _llegadas) {
		posicion = _posicion
		llegadas = _llegadas
	}

	method movete(direccion) {
		this.validarLugarLibre(direccion) 
		direccion.move(posicion)
	}

	method validarLugarLibre(direccion) {
		val posAlLado = direccion.posicionDeAlLado(posicion) 
		var lugarLibre = wgame.getObjectsIn(posAlLado)
			.forAll[ obj | obj.puedePisarte(this) ] 
		
		if (! lugarLibre) 
			throw new GameException("Algo traba la caja.")
	}
	
	method puedePisarte(_) = false

	method getImagen() {
		if (this.estaBienPosicionada())
			return "box_correct.png"
		
		return "box.png"
	}
	
	method estaBienPosicionada() {
		return llegadas
			.map[ llegada | llegada.getPosicion()]
			.contains(this.getPosicion())
	}
	
	method getPosicion() = posicion
}