package ar.edu.seguidorCarrera.domain

import java.util.List
import org.apache.commons.lang.StringUtils
import org.eclipse.xtend.lib.annotations.Accessors
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
	
	new() {
		notas = newArrayList
		estaAprobada = false
	}
	
	def agregarNota(Nota nota) {
		this.notas.add(nota)
	}
	
	def eliminarNota(Nota nota) {
		this.notas.remove(nota)
	}

    def buscarNota(String descripcionNota) {
        this.notas.findFirst[ 
            StringUtils.deleteWhitespace(it.descripcion).toLowerCase == descripcionNota.toLowerCase
        ]    
    }
	
}