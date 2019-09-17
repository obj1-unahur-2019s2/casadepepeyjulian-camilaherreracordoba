object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeMila {
	var property precio = 260 // <property> funciona como getter y setter con la consola
	
}
object salsaDeTomates {
	var property precio = 90
}

object kiloDeCebollas{
	var precio = 25
	
	method precio() {
		return precio
	}
}

object packComida {
	var plato // es una referencia, apunta  a otro objeto con el atributo
	var aderezo
	
	method configurarPlato(unPlato){
		plato = unPlato
	}
	
	method configurarAderezo(unAderezo){
		aderezo = unAderezo
	}
	
	method precio() {
		return plato.precio()+aderezo.precio()
	}
}

object packRegalo {
	var cosasPack = []
	
	
	method agregarComponente(componente) {
		cosasPack.add(componente)
	}
	method esComida() {
		return cosasPack.all({cosa => cosa.esComida()})
	}
	
	method esElectrodomestico(){
		return cosasPack.any({cosa => cosa.esElectrodomestico()})
	}
}
