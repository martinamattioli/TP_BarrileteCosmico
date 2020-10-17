class Localidad{
	const nombre 
	const equipajeImprescindible 
	var precio 
	const kilometraje
		
	method nombre() = nombre
	
	method precio() = precio
	
	method kilometraje() = kilometraje
	
	method esDestacado() = precio > 2000
	
	method cantidadDeElementos() = equipajeImprescindible.size()
	
	method ultimoElementoDelEquipaje() = equipajeImprescindible.last()
		
	method esPeligroso() = self.tieneEnElEquipaje("vacuna")
	
	method aplicarDescuento(unValor) {
		equipajeImprescindible.add("certificado de descuento")
		precio -= unValor
	}
	
	method tieneEnElEquipaje(unElemento) {
		return equipajeImprescindible.any({elemento=>elemento.contains(unElemento)})
	}	
	
	method distanciaAOtraLocalidad(otraLocalidad){
		return (otraLocalidad.kilometraje() - kilometraje).abs()
	}
}

