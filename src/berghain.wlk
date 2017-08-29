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
	
	method baila(persona){
		persona.disminuirEnergia(40)
		persona.aumetarDiversion(30)
		personasBailando.add(persona)
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
	
	method baila(persona){
		dj.baila(persona)
		personasBailando.add(persona)
	}
	
	method personasBailando(){
		return personasBailando
	}
}

object darkRoom{
	var personasBailando = #{}
	
	method baila(persona){
		personasBailando.add(persona)
	}
	
	method personasBailando(){
		return personasBailando
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
	
	method cuantaGenteHayEn(pista){
		return (pista.personasBailando()).size()
	}
	
	method patovaDeTurno(patova){
		patovaDeTurno = patova
	}
	
}




/*Modelar tanto a Berghain (pistas, DJs y patovas) como a las personas.
Hacer que una persona entre al club (en caso que el patova de turno lo deje).
Que todas las personas de una pista bailen.
Saber cuántas personas están bailando en cada pista.
Saber si Gonzen está bailando en alguna pista. 
 */
