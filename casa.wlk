import cosas.* 

object casaDePepeYJulian {
	const property cosas = []

	method comprar(cosa){
		cosas.add(cosa)
	}

	method cantidadDeCosasCompradas(){
		return cosas.size()
	}
    
	method tieneAlgun(categoria){
		return cosas.any({cosa => cosa.categoria() == categoria})
	}

	method vieneDeComprar(categoria){
		return cosas.last().categoria() == categoria 
	}
   
   method esDerrochona(){
	    return cosas.sum({cosa => cosa.precio()}) > 9000

   }

   method compraMasCara(){
	return cosas.max({cosa => cosa.precio()})
	        
   }

   method comprados(categoria){
       return cosas.filter({cosa => cosa.categoria()==categoria})
   }

   method malaEpoca(){
	   return cosas.all({cosa => cosa.categoria() == comida})
   }

   method queFaltaComprar(lista){
	   return lista.filter({cosa =>  not self.estaComprado(cosa)}) 
   }

   method estaComprado(cosa){
	    return cosas.contains(cosa)
	   
   }

   method faltaComida(){
	// cosa.categoria() == comida}) deberia ser una subtarea polimorfica, pero no tengo ganas.
	    return cosas.count({cosa => cosa.categoria() == comida}) < 2
   }

   method categoriasCompradas(){
	   return cosas.map({cosa => cosa.categoria()}).asSet()
   }

}