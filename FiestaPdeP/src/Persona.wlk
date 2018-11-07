import Personalidad.*
import Disfraz.*


class Persona{
	var property personalidad
	var property fiesta
	var property edad
	var property traje
	
	
	constructor(_personalidad,_edad,unTraje, invitadoFiesta){
		personalidad = _personalidad
		edad = _edad
		traje = unTraje
		fiesta = invitadoFiesta
	}
	
	method agregarDisfraz(_disfraz) = traje.add(_disfraz)
	
	method puntos() = traje.puntos(self)
	//CLASE PERSONA
	method satisfecho() = self.puntos() > 10
	
	
	

	method tieneDisfraz() = !traje.equals(null)
	
	method fechaFiesta()=
		fiesta.fecha()
}

class Caprichoso inherits Persona{
	constructor(unPersonalidad,_edad, unTraje,invitadoFiesta)=super(unPersonalidad,_edad,unTraje, invitadoFiesta)
	override method satisfecho() = super() and self.nombreTrajeEsPar()
	
	method nombreTrajeEsPar() = traje.nombre().length().even() 
	
}

class Pretencioso inherits Persona{
	constructor(unPersonalidad,_edad, unTraje,invitadoFiesta)=super(unPersonalidad,_edad,unTraje, invitadoFiesta)
	override method satisfecho() = super() and self.trajeHechoMenosDe(30)
	
	method trajeHechoMenosDe(unosDias) = traje.fecha().plusDays(-unosDias) < 0
}

class Numerologo inherits Persona{
	var puntajeDeterminado
	constructor(unPersonalidad,_edad,unTraje,invitadoFiesta, unPuntaje)=super(unPersonalidad,_edad,unTraje, invitadoFiesta){
		puntajeDeterminado = unPuntaje
	}
	override method satisfecho() = self.puntos() > puntajeDeterminado
}