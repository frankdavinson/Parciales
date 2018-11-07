import Persona.*
import Personalidad.*
import Disfraz.*
class InvitadoException inherits Exception{}
class Fiesta{
	var property fecha
	var invitados = []
	constructor(){}
	constructor(unaFecha,losInvitados){
		fecha = new Date()
		invitados = losInvitados
	}
	method unBodrio()= 
		invitados.all({inv=>!inv.sasifecho()})
		
	method mejorDisfraz()=
		invitados.max({invitado =>invitado.puntos()})
		
	method puedenCambiarse(invitado,otroInvitado)=
		self.estanEnLaMismaFiesta(invitado,otroInvitado) &&
		self.noEstanSatisfecho(invitado,otroInvitado) &&
		self.cambiandoseQuedanSatisfechos(invitado,otroInvitado)

		
	method estanEnLaMismaFiesta(invitado,otroInvitado)=
		invitados.contains(invitado) && invitados.contains(otroInvitado)
		
	
	method noEstanSatisfecho(invitado,otroInvitado) = 
		!invitado.satisfecho() or !otroInvitado.satisfecho()
	
		
	method cambiandoseQuedanSatisfechos(invitado,otroInvitado)=
		invitado.conformeConElCambio(otroInvitado) &&
		otroInvitado.conformeConElCambio(invitado)
		
		 
	method noEstaInvitado(persona) = !invitados.contains(persona)
		
	method agregarAFiesta(persona){
		if(self.unirseALaFiesta(persona))
			return self.agregarInvitado(persona)
		else 
			return console.println("NO PODES UNIRTE A LA FIESTA")	
	
	}
		
	method unirseALaFiesta(persona) = persona.tieneDisfraz() && self.noEstaInvitado(persona)
			
	
	method agregarInvitado(persona) =invitados.add(persona)
}
