class Viaje {
	
	var origen
	var destino
	var medioDeTransporte

	method origen() = origen
	
	method destino() = destino
	
	method medioDeTransporte() = medioDeTransporte
	
	method valor(){
		const distancia = origen.distanciaAOtraLocalidad(destino)
		return distancia * medioDeTransporte.costoPorKilometro() + destino.precio()
	}
	
	method kilometros(){
		return origen.distanciaAOtraLocalidad(destino)
	}
}
