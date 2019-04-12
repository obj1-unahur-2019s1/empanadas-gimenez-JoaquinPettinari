object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var totalDinero = 0
	var totalDeuda = 0
	var sueldo = 15000
	method sueldo() { return sueldo }
	
	
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	
	method cobrarSueldo() {
		if (totalDeuda == 0){
			totalDinero += sueldo
		}
		else {
			
			if (sueldo < totalDeuda){
				totalDeuda -= sueldo
					
			}
			else{
				totalDinero += sueldo - totalDeuda
				totalDeuda = 0
			}
		}
	}
	/*method cobrarSueldo()
	 * var cuantoDescuento = sueldo.min(deuda)
	 * deuda -= cuantoDescuento
	 * dinero += sueldo cuantoDescuento
	 */
	
	method totalDeuda() {return totalDeuda}
	method totalDinero() {return totalDinero}
	method gastar(cuanto) {
		totalDinero -= cuanto
		if (totalDinero < 0) {
			totalDeuda -= totalDinero  
			totalDinero = 0 
		}
	}
}
object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var plataTotal = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo() {plataTotal += self.sueldo() }
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {
    	dinero -= empleado.sueldo()
    	empleado.cobrarSueldo()
}
}
