import destinos.*
import viaje.*
import medioDeTransporte.*

object barrileteCosmico {
	
	var destinos = #{garlic,silver,toninas,goodAirs}
	var transportes = #{avion}
	
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
	
	method armarViaje(usuario,destino){
		const nuevoViaje = new Viaje(origen = usuario.localidadDeOrigen(), destino = destino, transporte = self.transporteRandom())
		return nuevoViaje
	}
	
	method transporteRandom(){
		return transportes.anyOne()
	}
	
}
