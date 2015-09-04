
class Llegada {
	val posicion
	
	new (_posicion) {
		posicion = _posicion
	}
	
	method movete(direccion) { /* No pasa naranja */ }
	
	method puedePisarte(_) = true
	
	method getImagen() = "goal.png"
	method getPosicion() = posicion
}