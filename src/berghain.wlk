import personas.*


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

// Pistas

object mainRoom{
	method baila(persona){
		persona.disminuirEnergia(40)
		persona.aumetarDiversion(30)
	}
}

object panoramaBar{
	method dixon(persona){
		persona.disminuirEnergia(60)
		persona.aumetarDiversion(120)
	}
	
	method marcelDettmann(persona){
		persona.energia(0)
		persona.aumentarDiversion(1000)
	}
	
	method tommyMunoz(persona){
		persona.disminuirEnergia(80)
	}
}

// Berghain

object berghain{
	var patovaDeTurno
	var personasAdentro = #{}
	
	method entra(persona){
		if(patovaDeTurno.dejaPasar(persona)){
			personasAdentro.add(persona)
		}
	}
	
	method patovaDeTurno(patova){
		patovaDeTurno = patova
	}
	
}

