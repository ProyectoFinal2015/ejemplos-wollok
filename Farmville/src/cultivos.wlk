import edades.*

class Cultivo {
	var posicion
	var edad = ninio
	
	method crece() { edad.crece(this) }
	
	method cosechate(granjero) {
		granjero.sumaOro(edad.oro(this))
		edad = muerto
	}
	
	method getImagen() = edad.getImagen(this)
	method setEdad(_edad) { edad = _edad }
	method getPosicion() = posicion
	method setPosicion(_posicion) { posicion = _posicion }
}


class Maiz extends Cultivo {
	method imagenCultivo() = "wollokUI_corn02.png"
	method imagenCultivoNinio() = "wollokUI_corn01.png"
	method oroBase() = 150
}

class Trigo extends Cultivo {
	method imagenCultivo() = "wollokUI_wheat02.png"
	method imagenCultivoNinio() = "wollokUI_wheat01.png"
	method oroBase() = 100
}

class Tomaco extends Cultivo {
	method imagenCultivo() = "wollokUI_tomaco06.png"
	method imagenCultivoNinio() = "wollokUI_tomaco05.png"
	method oroBase() = 100
}