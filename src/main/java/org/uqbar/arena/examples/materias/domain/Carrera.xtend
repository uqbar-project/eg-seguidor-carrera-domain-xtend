package org.uqbar.arena.examples.materias.domain

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.ObservableUtils
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class Carrera {
	List<Materia> materias
	
	new(){ 
		materias = newArrayList
	}
	
	def agregarMateria(Materia materia){
		materias.add(materia)
		ObservableUtils.firePropertyChanged(this, "materias", materias)
	}
	
	def getMaterias(){
		materias
	}
	
}