//Escribir aqui los objetos


object galvan {
	var sueldo = 15000
	var dineroQueTiene = 0
	var deuda = 0
	
	method obtenerSueldo(){
		return sueldo
	}
	
    method obtenerDeuda(){
    	return deuda
    }
   
   method dineroQueTiene(){
   		return dineroQueTiene
   }
   
   method aumentarSueldo(cantidad){
   	  sueldo = cantidad
   	 }
   	 
   method cobrarSueldo() {
   	gimenez.pagaSueldo(sueldo)
   	   	dineroQueTiene += sueldo
   }

    
    method gastar(cantidad){
    	if (cantidad > dineroQueTiene){
    		deuda += cantidad - dineroQueTiene
			dineroQueTiene = 0    	
    	}  else {
    		dineroQueTiene -= cantidad	
    	}
    }

   
   method pagarDeudas(){
   	if (dineroQueTiene > 0){ 
    dineroQueTiene = 0.max(dineroQueTiene - deuda)  
    deuda = 0.max(deuda - sueldo)   
   	} else {
     (dineroQueTiene = 0)  
    } 
  }
 }

 
object baigorria {
	var cantidadDeEmpanadasVendidas = 0
	const montoPorEmpanada = 15
	var sueldoPorVentas 
    var fondoTotal	
	
	method venderEmpanadas(cantidad){
		cantidadDeEmpanadasVendidas += cantidad
	}
	
	method calcularSueldo(){
		sueldoPorVentas = cantidadDeEmpanadasVendidas * montoPorEmpanada 		
	}
      
      method cobraSueldo(){
      	gimenez.pagaSueldo(sueldoPorVentas)
    }
    
    method consultarSueldo(){
     	return sueldoPorVentas
     }
       
     method mesNuevo(){
     	fondoTotal = sueldoPorVentas
        cantidadDeEmpanadasVendidas = 0
        self.calcularSueldo()
     }
     
     method totalCobrado(){
     	return fondoTotal
     }
 
}

object gimenez {
	var fondoParaSueldos = 30000
	
	method pagaSueldo(cantidad){
		fondoParaSueldos -= cantidad
	}
	
	method informeActualDelFondo() {
		return fondoParaSueldos
	}
	
}

