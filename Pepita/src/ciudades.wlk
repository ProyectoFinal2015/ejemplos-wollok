object buenosAires {

	var posicion = new Position(1, 1)
	
	method distancia(ciudad) = (this.km() - ciudad.km()).abs() 
	
	method km() = 0
	
	method getImagen() = "caja.png"
	
	method posicion() = posicion
}

object villaGesell {
	
	var posicion = new Position(8, 3)

	method distancia(ciudad) = (this.km() - ciudad.km()).abs() 
	
	method km() = 100

	method getImagen() = "caja.png"
	
	method posicion() = posicion
}