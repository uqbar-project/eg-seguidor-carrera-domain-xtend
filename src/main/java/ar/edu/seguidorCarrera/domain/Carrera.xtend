package ar.edu.seguidorCarrera.domain

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class Carrera {
	List<Materia> materias
	
	new() { 
		materias = newArrayList
	}
	
	def void agregarMateria(Materia materia){
		materias.add(materia)
	}
	
}