import localidad.*
import medioDeTransporte.*
import destinos.*
import usuarios.*

class Viaje {

	var origen
	var destino
	var transporte
	
	method destino() = destino
	
	method precioDelViaje(){
		const kilometrosARecorrer = origen.distanciaAOtraLocalidad(destino)
		const precioPorKilometros = (transporte.precioPorKilometro())*kilometrosARecorrer
		return precioPorKilometros + (destino.precio())
	}
	
	method distanciaEntreLocalidades() {
		return origen.distanciaAOtraLocalidad(destino)
	}
	
	method transporte() = transporte
	
	method origen() = origen

}

const viaje1 = new Viaje(origen=garlic,destino=toninas,transporte=avion)
const viaje2 = new Viaje(origen=toninas,destino=goodAirs,transporte=avion)
const viajeAGarlic = new Viaje(origen = pabloHari.localidadDeOrigen(), destino = garlic,transporte = avion)
const viajeASilver = new Viaje(origen = garlic, destino = silver,transporte = avion)
