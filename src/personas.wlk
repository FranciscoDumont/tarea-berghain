object vonLukaz{
	var energia = 150
	var diversion = 70
	var ropa = "blanca"
	var edad = 17
	
	method ropa(){
		return ropa
	}
	method edad(){
		return edad
	}
}

object bianker{
	var energia = 140
	var diversion = 80
	var ropa = "negra"
	var edad = 22
	
	method ropa(){
		return ropa
	}
	method edad(){
		return edad
	}
}

object gonzen{
	var energia = 90
	var diversion = 15
	var ropa = "negra"
	var edad = 33
	
	method ropa(){
		return ropa
	}
	method edad(){
		return edad
	}
}

// Patovas
object rochensen{
	method dejaPasar(persona){
		return persona.edad() >= 21		
	}
}
object rodrigsen{
	method dejaPasar(persona){
		return persona.ropa() == "negra"
	}
}
object gushtavotruccensen{
	method dejaPasar(persona){
		return false
	}
}
