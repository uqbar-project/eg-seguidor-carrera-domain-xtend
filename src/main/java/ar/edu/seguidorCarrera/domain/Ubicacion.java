package ar.edu.seguidorCarrera.domain;

import org.uqbar.commons.utils.Observable;

@Observable
public enum Ubicacion {
	
	PrimerCuatrimestre {
		@Override
		public String getReadableName() {
			return "Primer Cuatrimestre";
		}
	},
	SegundoCuatrimestre {
		@Override
		public String getReadableName() {
			return "Segundo Cuatrimestre";
		}
	};
	
	public abstract String getReadableName();

}
