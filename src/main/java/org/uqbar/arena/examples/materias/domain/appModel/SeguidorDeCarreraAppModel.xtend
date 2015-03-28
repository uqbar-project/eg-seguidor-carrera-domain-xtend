package org.uqbar.arena.examples.materias.domain.appModel

import java.util.Arrays
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.arena.examples.materias.domain.Carrera
import org.uqbar.arena.examples.materias.domain.Materia
import org.uqbar.arena.examples.materias.domain.Nota
import org.uqbar.arena.examples.materias.domain.Ubicacion
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