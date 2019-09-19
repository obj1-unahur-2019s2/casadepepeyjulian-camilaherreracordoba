import cosas.* 
import cuentas.*

object casaDePepeYJulian {
	const cosas = []
	var property cuentaQueEstoyUsando
	
	method comprar(cosa) {
		cosas.add(cosa)
		self.gastar(cosa.precio())
	}
	
	method gastar(importe){
		cuentaQueEstoyUsando.extraer(importe)
	}
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	method tieneComida() {
		return cosas.any({cosa => cosa.esComida()})
	}
	
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or 5000 >= cosas.last().precio()
	}
	
	method esDerrochona() {
		return cosas.sum({cosa => cosa.precio()}) >= 9000
	}
	
	method compraMasCara() {
		return cosas.max({cosa => cosa.precio()}) 
	}
	
	method electrodomesticosComprados(){
		return cosas.filter({cosa => cosa.esElectrodomestico()})
	}
	
	method malaEpoca() {
		return cosas.all({cosa => cosa.esComida()})
	}
	
	method queFaltaComprar(lista) {
		return lista.filter({ cosa=> not cosas.contains(cosa)})
	}
	
	method faltaComida(){
		 return cosas.count({cosa => cosa.esComida()}) < 2
	}
// parte 3	
	method gastoEnComida() {
		return cosas
			.filter({cosa => cosa.esComida()})
			.sum( {cosa => cosa.precio()})
	}
	
	method comidaComprada() = cosas.filter({ cosa => cosa.esComida()}) // auxiliar
	
	method electrodomesticosComprados2() = cosas.filter({ cosa => cosa.esElectrodomestico()})// auxiliar
	
	method gastoEnComida2() {// otro metodo
		return self.comidaComprada().sum({ cosa => cosa.precio()})
	}
	
	method hayElectrodomesticosBaratos() {
		return cosas.any({ cosa => cosa.esElectrodomestico() and cosa.precio() < 3000}) 
	}
	method hayElectrodomesticosBaratos2() {
		return self.electrodomesticosComprados().any({ cosa => cosa.precio() < 3000})
	}
	
	method preciosDeElectrodomesticos() {
		return cosas
			.filter({cosa => cosa.esElectrodomestico()})
			.map({ cosa => cosa.precio()})
	}
	
	method nivelEnAumento(){
		/* indica si el precio de la última cosa comprada es el doble del precio de la primera, o más. */
		return self.comidaComprada().last().precio()  >= self.comidaComprada().first().precio()*2
	}
	
	method primeraComidaComprada(){
		return self.comidaComprada().first()
	}
}