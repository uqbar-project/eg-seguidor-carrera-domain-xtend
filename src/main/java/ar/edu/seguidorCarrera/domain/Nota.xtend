package ar.edu.seguidorCarrera.domain

import java.util.Date
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.TransactionalAndObservable

@TransactionalAndObservable
@Accessors
class Nota {
	
	String descripcion
	Date fecha 
	Boolean estaAprobada
	
	new(){
		fecha = new Date()
		estaAprobada = false
	}
	
}