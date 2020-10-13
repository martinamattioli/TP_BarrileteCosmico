import destinos.*
import mediosDeTransporte.*

class usuario{
	
	var historial
	var listaUsuarios
	var dineroEnCuenta
	var origen
	
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

	method viajar(destino,medio){
		const distancia = origen.distanciaAOtraLocalidad(destino)	
		if (self.puedeViajar(distancia,destino,medio)){
			historial.add(destino)
		    dineroEnCuenta -= distancia * medio.costoPorKilometro() + destino.precio()
		    origen = destino
		}
	}	
	
	method puedeViajar(distancia,destino,medio){
		return distancia * medio.costoPorKilometro() + destino.precio() < dineroEnCuenta
	}
	
	
	method kilometros() {
		return (self.costoTotalDeDestinos())*0.1
	}
	
	method costoTotalDeDestinos() {
		return historial.sum({unDestino => unDestino.precio()})
	}
	
	method seguirA(unUsuario) {
		self.agregarSeguido(unUsuario)
		unUsuario.agregarSeguido(self)
	}
	
	method agregarSeguido(unUsuario) {
		listaUsuarios.add(unUsuario)
	}
	
}

const pabloHari = new usuario(historial = #{toninas,goodAirs}, listaUsuarios = #{}, dineroEnCuenta = 1500,origen = toninas )

/*
object pabloHari {
	
	var historial = #{toninas,goodAirs}
	var listaUsuarios = #{}
	var dineroEnCuenta = 1500 
	
	method historial() = historial
		
	method dineroEnCuenta() = dineroEnCuenta

	method volarA(unDestino) {
		if (self.puedeVolarA(unDestino)){
		    historial.add(unDestino)
		    dineroEnCuenta -= unDestino.precio()
		} 
	}
	
	method puedeVolarA(unDestino) {
		return dineroEnCuenta > unDestino.precio()
	}


	method viajar(origen,destino,medio){
		const distancia = origen.distanciaAOtraLocalidad(destino)	
		if (self.puedeViajar(distancia,destino,medio)){
			historial.add(destino)
		    dineroEnCuenta -= distancia * medio.costoPorKilometro() + destino.precio()
		}
	}	
	
	method puedeViajar(distancia,destino,medio){
		return distancia * medio.costoPorKilometro() + destino.precio() < dineroEnCuenta
	}
	
	
	method kilometros() {
		return (self.costoTotalDeDestinos())*0.1
	}
	
	method costoTotalDeDestinos() {
		return historial.sum({unDestino => unDestino.precio()})
	}
	
	method seguirA(unUsuario) {
		self.agregarSeguido(unUsuario)
		unUsuario.agregarSeguido(self)
	}
	
	method agregarSeguido(unUsuario) {
		listaUsuarios.add(unUsuario)
	}
	
}
 */