import Persona.*
import Disfraz.*

class Personalidad{
	var property persona

	method esSexy()
}

class Alegre inherits Personalidad{
	
	override method esSexy() = false
}

class Taciturna inherits Personalidad{
	override method esSexy() = persona.edad()< 30
}

class Cambiante inherits Personalidad{
	var property personalidadEspecial
	
	method cambiarPersonalidad(unaPersonalidad){
		personalidadEspecial = unaPersonalidad
	}
	override method esSexy() = personalidadEspecial.esSexy()
}

//Composicion

class Personalidad2{
	var property personalidad
	
	constructor(unaPersonalidad){
		personalidad = unaPersonalidad
	}
	method personalidad() = personalidad
	method esSexy() =  personalidad.sexy()
}

object alegre2{
	method sexy() = false
}

object taciturna2{
	var persona
	
	method sexy() = persona.edad()< 30
}
// las personas cambiantes seria un setter de la clase personalidad 
//class Cambiante2{
//	var  personalidadCambiante
//	constructor(unaPersonalidad){
//		personalidadCambiante = unaPersonalidad
//	}
//	
//	method cambiarPersonalidad(unaPersonalidad){
//		personalidadCambiante = unaPersonalidad
//	}
//	method sexy()= personalidadCambiante.sexy()
//}