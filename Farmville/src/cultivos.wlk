import etapas.*

class Cultivo {
	var posicion
	var precio
	var nombre
	var etapa = ninio
	
	constructor(_nombre, _precio) {
		nombre = _nombre
		precio = _precio
	}
	
	method crece() { etapa.crece(this) }
	
	method cosechate(granjero) {
		granjero.sumarOro(etapa.oroPorCosecha(this))
		etapa = muerto
	}
	
	method oroBase() = precio
	method imagenCultivoAdulto() = nombre + "_adult.png"
	method imagenCultivoNinio() = nombre + "_baby.png"
	method setEtapa(_edad) { etapa = _edad }
	method getImagen() = etapa.getImagen(this)
	method getPosicion() = posicion
	method setPosicion(_posicion) { posicion = _posicion }
}


class Maiz inherits Cultivo { 
	constructor() = super("corn", 150)
}

class Trigo inherits Cultivo {
	constructor() = super("wheat", 100)
}

class Tomaco inherits Cultivo {
	constructor() = super("tomaco", 50)
}
