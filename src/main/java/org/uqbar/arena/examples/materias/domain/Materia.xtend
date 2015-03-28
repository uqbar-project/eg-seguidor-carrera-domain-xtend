package org.uqbar.arena.examples.materias.domain

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.ObservableUtils
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class Materia {
	String nombreMateria
	Integer anioCursada
	String profesor 
	Ubicacion ubicacion
	Boolean estaAprobada
	List<Nota> notas
	
	new(){
		notas = newArrayList
		estaAprobada = false
	}
	
	def agregarNota(Nota nota) {
		this.notas.add(nota)
		ObservableUtils.firePropertyChanged(this,"notas", notas)
	}
	
	def eliminarNota(Nota nota) {
		this.notas.remove(nota)
		ObservableUtils.firePropertyChanged(this,"notas", notas)
	}
	
}