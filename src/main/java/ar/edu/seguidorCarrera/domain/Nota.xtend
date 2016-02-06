package ar.edu.seguidorCarrera.domain

import java.util.Date
import org.eclipse.xtend.lib.annotations.Accessors
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
	
}