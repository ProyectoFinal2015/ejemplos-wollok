object ninio {

	method crece(cultivo) { cultivo.setEdad(adulto) } 

	method oro(_) = 0
	
	method getImagen(_) = "wollokUI_tomaco05.png"
}

object adulto {
	
	method crece(cultivo) { cultivo.setEdad(muerto) } 
	
	method oro(cultivo) = cultivo.oroBase()
	
	method getImagen(cultivo) = cultivo.imagenCultivo()
}

object muerto {
	
	method crece(_) { "No hace nada" } 
	
	method oro(_) = 0
	
	method getImagen(_) = "wollokUI_tomaco03.png"
}
