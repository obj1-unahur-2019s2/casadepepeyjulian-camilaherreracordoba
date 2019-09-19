 object cuentaCorriente {
 	method depositar(importe){
 		
 	}
 	
 	method extraer(importe) {
 		
 	}
 	method saldo(){
 		
 	}
 } 
 
 object cuentaConGastos {
 		method depositar(importe){
 		
 	}
 	
 	method extraer(importe) {
 		
 	}
 	method saldo(){
 		
 	}
 }
 
 object cuentaCombinada {
 	var property cuentaPrimaria
 	var property cuentaSecundaria
 	method depositar(importe){
 		
 	}
 	
 	method extraer(importe) {
 		
 	}
 	method saldo(){
 		return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
 	}
 }