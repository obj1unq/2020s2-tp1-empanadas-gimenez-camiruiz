//Escribir aqui los objetos


object galvan {
	var sueldo = 15000
	
} 

object baigorria {
	var cantidadDeEmpanadasVendidas = 0
	const montoPorEmpanada = 15
	var sueldoPorVentas 
    var fondoTotal	
	
	method venderEmpenadas(cantidad){
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

