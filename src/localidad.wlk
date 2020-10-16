class Localidad{
	const nombre 
	const equipajeImprescindible 
	var precio 
	const kilometraje
		
	method nombre() = nombre
	
	method precio() = precio
	
	method esDestacado() = precio > 2000
	
	method cantidadDeElementos() {
		return equipajeImprescindible.size()
	}
	
	method ultimoElementoDelEquipaje() {
		return equipajeImprescindible.last()
	}
	
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
	
	method kilometraje(){
		return kilometraje
	}
	
	method distanciaAOtraLocalidad(otraLocalidad){
		return (otraLocalidad.kilometraje() - kilometraje).abs()
	}
}

