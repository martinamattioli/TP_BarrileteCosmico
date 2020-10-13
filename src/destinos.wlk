class localidad {
	const nombre
	const equipajeImprescindible
	var precio
	const kilometro
	
	method nombre() = nombre
	
	method precio() = precio
	
	method esDestacado() = precio > 2000
	
	method kilometro() = kilometro
	
	method aplicarDescuento(unValor) {
		equipajeImprescindible.add("certificado de descuento")
		precio -= unValor
	}
	
	method esPeligroso(){
		return self.tieneEnElEquipaje("vacuna")
	}
	
	method tieneEnElEquipaje(unElemento) {
		return equipajeImprescindible.any({elemento=>elemento.contains(unElemento)})
	}
	
	method distanciaAOtraLocalidad(otraLocalidad){
		return (otraLocalidad.kilometro() - kilometro).abs()
	}	
}

const garlic = new localidad(nombre = "Garlic's Sea", equipajeImprescindible = #{"cania de pescar","piloto"}, precio = 2500,kilometro=0)
const silver = new localidad(nombre = "Silver's Sea", equipajeImprescindible = #{"protector solar","equipo de buceo"}, precio = 1350, kilometro = 0)
const toninas = new localidad(nombre = "Last Toninas", equipajeImprescindible = #{"vacuna gripal","vacuna B","necronomicon"}, precio = 3500, kilometro = 0)
const goodAirs = new localidad(nombre = "Good Airs", equipajeImprescindible = #{"cerveza","protector solar"}, precio = 1500, kilometro = 0)

/* 
object garlic {
	const nombre = "Garlic's Sea"
	const equipajeImprescindible = #{"cania de pescar","piloto"}
	var precio = 2500
	
	method nombre() = nombre
	
	method precio() = precio
	
	method esDestacado() = precio > 2000
	
	method aplicarDescuento(unValor) {
		equipajeImprescindible.add("certificado de descuento")
		precio -= unValor
	}
	
	method esPeligroso(){
		return self.tieneEnElEquipaje("vacuna")
	}
	
	method tieneEnElEquipaje(unElemento) {
		return equipajeImprescindible.any({elemento=>elemento.contains(unElemento)})
	}	
}

object silver {
	const nombre = "Silver's Sea"
	const equipajeImprescindible = #{"protector solar","equipo de buceo"}
	var precio = 1350
	
	method nombre() = nombre
	
	method precio() = precio
	
	method esDestacado() = precio > 2000
	
	method aplicarDescuento(unValor) {
		equipajeImprescindible.add("certificado de descuento")
		precio -= unValor
	}
	
	method esPeligroso(){
		return self.tieneEnElEquipaje("vacuna")
	}
	
	method tieneEnElEquipaje(unElemento) {
		return equipajeImprescindible.any({elemento=>elemento.contains(unElemento)})
	}	
}

object toninas {
	const nombre = "Last Toninas"
	const equipajeImprescindible = #{"vacuna gripal","vacuna B","necronomicon"}
	var precio = 3500
	
	method nombre() = nombre
	
	method precio() = precio
	
	method esDestacado() = precio > 2000
	
	method aplicarDescuento(unValor) {
		equipajeImprescindible.add("certificado de descuento")
		precio -= unValor
	}
	
	method esPeligroso(){
		return self.tieneEnElEquipaje("vacuna")
	}
	
	method tieneEnElEquipaje(unElemento) {
		return equipajeImprescindible.any({elemento=>elemento.contains(unElemento)})
	}
}


object goodAirs {
	const nombre = "Good Airs"
	const equipajeImprescindible = #{"cerveza","protector solar"}
	var precio = 1500
	
	method nombre() = nombre
	
	method precio() = precio
	
	method esDestacado() = precio > 2000
	
	method aplicarDescuento(unValor) {
		equipajeImprescindible.add("certificado de descuento")
		precio -= unValor
	}
	
	method esPeligroso(){
		return self.tieneEnElEquipaje("vacuna")
	}
	
	method tieneEnElEquipaje(unElemento) {
		return equipajeImprescindible.any({elemento=>elemento.contains(unElemento)})
	}
}
*/