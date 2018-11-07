import Personalidad.*
import Disfraz.*


class Persona{
	var personalidad
	var property traje
	constructor(_personalidad,unTraje){
		personalidad = _personalidad
		traje = unTraje
	}
	
	method agregarDisfraz(_disfraz) = traje.add(_disfraz)
	
	method puntos() = traje.puntos(self)
	//CLASE PERSONA
	method satisfecho() = self.puntos() > 10
	
	method cambiarseTrajeCon(unaPersona)=
		unaPersona.traje(traje)
		
	method tieneDisfraz() = !traje.equals(null)
}

class Caprichoso inherits Persona{
	
	override method satisfecho() = super() and self.nombreTrajeEsPar()
	
	method nombreTrajeEsPar() = traje.nombre().length().even() 
	
}

class Pretencioso inherits Persona{
	
	override method satisfecho() = super() and self.trajeHechoMenosDe(30)
	
	method trajeHechoMenosDe(unosDias) = traje.fecha().plusDays(-unosDias) < 0
}

class Numerologo inherits Persona{
	var puntajeDeterminado
	constructor(unPersonalidad,unTraje,unPuntaje)=super(unPersonalidad,unTraje){
		puntajeDeterminado = unPuntaje
	}
	override method satisfecho() = self.puntos() > puntajeDeterminado
}