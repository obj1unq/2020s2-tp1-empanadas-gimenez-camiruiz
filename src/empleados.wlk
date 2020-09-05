//Escribir aqui los objetos


object galvan {
	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	
	
	//GETTER
	method sueldo(){
		return sueldo
	}
	
    method deuda(){
    	return deuda
    }
   
   method dinero(){
   		return dinero
   }
   
   //SETTER
   method sueldo(cantidad){
   	  sueldo = cantidad
   	 }
   	 
   method cobrarSueldo() {
   	   	dinero += sueldo
   }

    
    method gastar(cantidad){
    	if (cantidad > dinero){
    		deuda += cantidad - dinero
			dinero = 0    	
    	}  else {
    		dinero -= cantidad	
    	}
    }

   
   method pagarDeudas(){
   	if (dinero > 0){ 
    dinero = 0.max(dinero - deuda)  
    deuda = 0.max(deuda - sueldo)   
   	} else {
     (dinero = 0)  
    } 
  }
  
   method mesNuevo(){
     	//nada
     }
 
 }
 
object baigorria {
	var cantidadDeEmpanadasVendidas = 0
	const montoPorEmpanada = 15
	var sueldoPorVentas = 0 
    var fondoTotal = 0	
	
	method vender(cantidad){
		cantidadDeEmpanadasVendidas += cantidad
		self.calcularSueldo()
	}
	
	method calcularSueldo(){
		sueldoPorVentas = cantidadDeEmpanadasVendidas * montoPorEmpanada 
				
	}
      
      method cobrarSueldo(){
   	   	fondoTotal += sueldoPorVentas
    }
    
    //GETTER
    method sueldo(){
     	return sueldoPorVentas
     }
     
     //SETTER
     method sueldo(cantidad){
     	fondoTotal = cantidad
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
	var fondoParaSueldos = 300000
	

	method pagarSueldo(persona){
	    fondoParaSueldos -= persona.sueldo() 
	    persona.mesNuevo()
	    persona.cobrarSueldo()
	    
	}
	
	method fondo() {
		return fondoParaSueldos
	}
	
}

