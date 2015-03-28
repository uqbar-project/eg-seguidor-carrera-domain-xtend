package org.uqbar.arena.examples.materias.domain

import java.util.Date
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.ObservableUtils
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class Nota {
	
	String descripcion
	Date fecha 
	Boolean estaAprobada
	
	new(){
		fecha = new Date()
		estaAprobada = false
	}
	
	def void setEstaAprobada(Boolean aprobo){
		estaAprobada = aprobo
		ObservableUtils.firePropertyChanged(this,"estaAprobada", aprobo)
	}
	
	
}