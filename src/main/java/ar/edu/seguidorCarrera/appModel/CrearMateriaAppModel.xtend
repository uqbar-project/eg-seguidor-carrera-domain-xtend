package ar.edu.seguidorCarrera.appModel

import ar.edu.seguidorCarrera.domain.Carrera
import ar.edu.seguidorCarrera.domain.Materia
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Observable

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