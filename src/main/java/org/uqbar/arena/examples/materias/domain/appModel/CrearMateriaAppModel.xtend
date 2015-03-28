package org.uqbar.arena.examples.materias.domain.appModel

import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.arena.examples.materias.domain.Carrera
import org.uqbar.arena.examples.materias.domain.Materia
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class CrearMateriaAppModel {
	Materia materia
	Carrera carrera 
	
	new(Carrera carrera){
		this.carrera = carrera
		materia = new Materia
	}
	
	def agregarMateria(){
		carrera.agregarMateria(materia)
	}
	
}