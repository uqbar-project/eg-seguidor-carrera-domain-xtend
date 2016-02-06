package ar.edu.seguidorCarrera.appModel

import java.util.Arrays
import org.eclipse.xtend.lib.annotations.Accessors
import ar.edu.seguidorCarrera.domain.Carrera
import ar.edu.seguidorCarrera.domain.Materia
import ar.edu.seguidorCarrera.domain.Nota
import ar.edu.seguidorCarrera.domain.Ubicacion
import org.uqbar.commons.utils.Observable

@Observable
@Accessors
class SeguidorDeCarreraAppModel {
	Carrera carrera
	Materia materiaSeleccionada
	Nota notaSeleccionada 
	
	def getUbicacionesPosibles(){
		Arrays.asList(Ubicacion.values)
	}
	
	def nuevaNota() {
		var nota = new Nota
		materiaSeleccionada.agregarNota(nota)
		nota
	}
	
	def eliminarNota() {
		materiaSeleccionada.eliminarNota(notaSeleccionada)
	}
	
}