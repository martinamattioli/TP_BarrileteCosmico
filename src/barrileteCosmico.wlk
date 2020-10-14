import destinos.*
import mediosDeTransporte.*

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
		usuario.viajar(destino,medios.anyOne())
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
