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

//Djs
object dixon{
	method baila(persona){
		persona.disminuirEnergia(60)
		persona.aumetarDiversion(120)
	}
}
	
object marcelDettmann{
	method baila(persona){
		persona.energia(0)
		persona.aumentarDiversion(1000)
	}
}
	
object tommyMunoz{
	method baila(persona){
		persona.disminuirEnergia(80)
	}
}


// Pistas

object mainRoom{
	var personasBailando = #{}
	
	method entra(persona){
		personasBailando.add(persona)
	}
		
	method baila(persona){
		persona.disminuirEnergia(40)
		persona.aumetarDiversion(30)
	}
	
	method personasBailando(){
		return personasBailando
	}
}

object panoramaBar{	
	var personasBailando = #{}
	var dj
	
	method dj(nuevoDj){
		dj = nuevoDj
	}
	
	method entra(persona){
		personasBailando.add(persona)
	}
	
	method baila(persona){
		dj.baila(persona)
	}
	
	method personasBailando(){
		return personasBailando
	}
}

object darkRoom{
	var personasBailando = #{}
	
	method entra(persona){
		personasBailando.add(persona)
	}
	
	method baila(persona){
	}
	
	method personasBailando(){
		return personasBailando
	}
}

// Berghain

object berghain{
	var patovaDeTurno
	var personasAdentro = #{}
	var pistas = #{mainRoom,panoramaBar,darkRoom}
	
	method entra(persona){
		if(patovaDeTurno.dejaPasar(persona)){
			personasAdentro.add(persona)
		}
	}
	
	method cuantaGenteHayEn(pista){
		return (pista.personasBailando()).size()
	}
	
	method bailanTodos(pista){
		var bailadores=pista.personasBailando()
		bailadores.forEach({persona => pista.baila(persona)})
	}
	
	method patovaDeTurno(patova){
		patovaDeTurno = patova
	}
	
	method estaEnAlgunaPista(persona){
		return pistas.any({
			pista => (pista.personasBailando()).contains(persona)
		})
	}
	
}

