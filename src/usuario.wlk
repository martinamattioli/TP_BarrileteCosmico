import destinos.*
import medioDeTransporte.*
import viaje.*
import barrileteCosmico.*

class Usuario{
	
	var historial
	var listaUsuarios
	var dineroEnCuenta
	var localidadDeOrigen
	
	method localidadDeOrigen() = localidadDeOrigen
	
	method historial() = historial
		
	method dineroEnCuenta() = dineroEnCuenta
/*
	method volarA(unDestino) {
		if (self.puedeVolarA(unDestino)){
		    historial.add(unDestino)
		    dineroEnCuenta -= unDestino.precio()
		} 
	}
	
	method puedeVolarA(unDestino) {
		return dineroEnCuenta > unDestino.precio()
	}
*/

	method viajar(destino){
		var nuevoViaje = barrileteCosmico.armarViaje(self,destino)
		if (self.puedeViajar(nuevoViaje)){
			historial.add(nuevoViaje)
		    dineroEnCuenta -= nuevoViaje.precioDelViaje()
		    localidadDeOrigen = destino
		}
	}	
	
	method puedeViajar(viaje){
		return viaje.precioDelViaje() < dineroEnCuenta
	}
	
	
	method kilometrosRecorridos() {
		var kilometrosTotales = 0
		historial.forEach({viaje => kilometrosTotales += viaje.distanciaEntreLocalidades()})
		return kilometrosTotales
	}
	/*
	method costoTotalDeDestinos() {
		return historial.sum({unDestino => unDestino.precio()})
	}
	*/
	method seguirA(unUsuario) {
		self.agregarSeguido(unUsuario)
		unUsuario.agregarSeguido(self)
	}
	
	method agregarSeguido(unUsuario) {
		listaUsuarios.add(unUsuario)
	}
	
}
/*
const pabloHari = new usuario(historial = [new Viaje(origen=garlic,destino=toninas,medioDeTransporte=avion),new Viaje(origen=toninas,destino=goodAirs,medioDeTransporte=avion)], listaUsuarios = #{}, dineroEnCuenta = 1500,origen = goodAirs)
 */