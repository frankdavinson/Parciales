import Persona.*
import Personalidad.*
import Disfraz.*

class Fiesta{
	var fecha
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
		self.cambiandoseTrajes(invitado,otroInvitado)
		
		
	method estanEnLaMismaFiesta(invitado,otroInvitado)=
		invitados.map({inv => inv.equals(invitado) or inv.equals(otroInvitado)})
		
	
	method noEstanSatisfecho(invitado,otroInvitado) = 
		!invitado.satisfecho() or !otroInvitado.satisfecho()
	
	method cambiandoseTrajes(invitado,otroInvitado)=
			self.pasanAEstarConformes(invitado,otroInvitado)
		
	method pasanAEstarConformes(invitado,otroInvitado)=
		invitado.cambiarseTrajeCon(otroInvitado).satisfecho() &&
		otroInvitado.cambiarseTrajeCon(invitado).satisfecho()
		
		
	method agregarAFiesta(persona)=
		persona.tieneDisfraz() && self.noEstaInvitado(persona)
	
	method noEstaInvitado(persona) = !invitados.contains(persona)
	
	
}
