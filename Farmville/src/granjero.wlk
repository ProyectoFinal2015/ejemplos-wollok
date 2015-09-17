object granjero {
	var oro = 0
	var cultivos = #[]
	var posicion = new Position(3, 3)
	
	method planta(cultivo) {
		cultivo.setPosicion(posicion.clone())
		cultivos.add(cultivo)
		wgame.addVisual(cultivo)
	}
	
	method rega() {
		wgame.getObjectsIn(posicion)
			.filter[ obj | !(this == obj) ] // TODO Que paja
			.forEach[ cultivo | cultivo.crece() ]
	}
	
	method cosechaTodo() {
		cultivos.forEach[ c | c.cosechate(this) ]
		cultivos.clear()
	}
	
	method sumaOro(cantidad) { oro += cantidad }

	method getImagen() = "wollokUI_tomaco00.png"
	method getPosicion() = posicion
}
