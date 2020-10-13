import destinos.*

object barrileteCosmico {
	const destinos = #{garlic,silver,toninas,goodAirs}
	
	method destinosMasImportantes() {
		return destinos.filter({unDestino => unDestino.esDestacado()})
	}
	
	method aplicarlesDescuento(unDescuento) {
		destinos.forEach({unDestino => unDestino.aplicarDescuento((unDestino.precio())*unDescuento)})
	}
	
	
	method esExtrema() {
		return destinos.any({unDestino => unDestino.esPeligroso()})
	}
	
	method destinosPeligrosos() {
		return destinos.filter({unDestino => unDestino.esPeligroso()})
	}
	method cartaDeDestinos() {
		return destinos.map({unDestino => unDestino.nombre()})
	}
	
}
