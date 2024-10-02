package ejecucion;

import java.math.BigDecimal;

import pe.edu.cibertec.proyemp.jpa.dao.EmpleadoDAO;
import pe.edu.cibertec.proyemp.jpa.entidades.Departamento;
import pe.edu.cibertec.proyemp.jpa.entidades.Empleado;

public class Ejecucion05 {

	public static void main(String[] args) {
		 
		 EmpleadoDAO empleadoDAO = new EmpleadoDAO();
		 
		 //LLenamos Departamento
		 Departamento departamento = new Departamento();
		 departamento.setIdDepartamento(2);
			
		 //Llenamos la información de Empleado
		 Empleado empleado = new  Empleado();
		 empleado.setNombre("Mirko");
		 empleado.setApePaterno("Ruiz");
		 empleado.setApeMaterno("Ramos");
		 empleado.setDireccion("Av. Tacna 656");
		 empleado.setSueldo(new BigDecimal(2900.75)); 
		 empleado.setDepartamento(departamento); 
		
		 //Llamar a Persist
		 empleadoDAO.insertar(empleado);
			

	}

}
