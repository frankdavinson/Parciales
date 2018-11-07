import Persona.*
import Disfraz.*

//Composicion

class Personalidad2{
	var property personalidad
	
	constructor(unaPersonalidad){
		personalidad = unaPersonalidad
	}
	method personalidad() = personalidad
	method esSexy() =  personalidad.sexy()
	method cambiante(unaPersonalidad){
		personalidad = unaPersonalidad
	}
}

object alegre2{
	method sexy() = false
}

object taciturna2{
	var persona
	
	method sexy() = persona.edad()< 30
}
