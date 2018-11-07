import Personalidad.*
import Persona.*

class Traje{
	var property nombre
	var  fecha
	var  property caracteristicas =#{}
	constructor(unNombre,unaFecha,unaCaracteristicas){
		nombre =unNombre
		fecha= unaFecha
		caracteristicas= unaCaracteristicas
	}
	
	method fecha() = fecha
	method agregarDisfraz(unDisfraz){
		caracteristicas.add(unDisfraz)
	}
	method puntos(persona) = self.caracteristicas().sum{unDisfraz =>unDisfraz.puntos(persona)}
	
}

class Gracioso{
	var property nivelGracia
	constructor(nivel){
		nivelGracia = 10.min(1.max(nivel))
	}
	
	method puntos(unaPersona) = 
	nivelGracia + self.unPlus(unaPersona)
	
	
	method unPlus(unaPersona)=
	if(unaPersona.edad()>50) return 3 else return 0
		
}

class Tobara{
	var fecha 
	
	constructor(unaFecha){
		fecha = unaFecha
	}
	
	
	method puntos(unaPersona)=
		self.diaDeFiestaDe(unaPersona)
	
	method diaDeFiestaDe(unaPersona) = 
	if((fecha - unaPersona.fechaFiesta())>=2)return 5 else return 3
	
}

class Careta{
	var property personaje
/*	constructor(unPersonaje){
		personaje = unPersonaje
	}
	*/
	method puntos(unaPersona)
}
//var mikimaus = new MickeyMouse()
object mickeyMouse inherits Careta{

	override method puntos(unaPersona)= 8
}

object osoCarolina inherits Careta{
	override method puntos(unaPersona)= 6
}

class Sexy{
	
	method puntos(unaPersona) = 
		self.puntosPorSexy(unaPersona)
		
	method puntosPorSexy(unaPersona)=
		if(unaPersona.personalidad().esSexy()) return 15 else return 2 
}