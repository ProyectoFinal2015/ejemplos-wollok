
class Pared {
	val posicion
	
	new (_posicion) {
		posicion = _posicion
	}

	method movete(direccion) {
		throw new GameException("No puedes mover las paredes.")
	}
	
	method puedePisarte(_) = false
	
	method getImagen() = "muro.jpg"
	method getPosicion() = posicion
}