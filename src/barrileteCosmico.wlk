import destinos.*
import medioDeTransporte.*
import viaje.*

object barrileteCosmico {
	const destinos = #{garlic,silver,toninas,goodAirs}
	const medios = #{avion}
	
	method destinosMasImportantes() {
		return destinos.filter({unDestino => unDestino.esDestacado()})
	}
	
	method aplicarlesDescuento(unDescuento) {
		destinos.forEach({unDestino => unDestino.aplicarDescuento((unDestino.precio())*unDescuento)})
	}
	
	method armarViaje(usuario,destino){
		const nuevoViaje = new Viaje(origen = usuario.localidadDeOrigen(), destino = destino, transporte = medios.anyOne())
		return nuevoViaje
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
