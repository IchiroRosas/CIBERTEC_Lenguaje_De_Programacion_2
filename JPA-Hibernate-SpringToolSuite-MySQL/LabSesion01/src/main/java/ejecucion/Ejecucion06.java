package ejecucion;

import java.math.BigDecimal;

import pe.edu.cibertec.proyemp.jpa.dao.EmpleadoDAO;
import pe.edu.cibertec.proyemp.jpa.entidades.Departamento;
import pe.edu.cibertec.proyemp.jpa.entidades.Empleado;

public class Ejecucion06 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		EmpleadoDAO empleadoDAO = new EmpleadoDAO();
		
		//LLenamos Departamento
		Departamento departamento = new Departamento();
		departamento.setIdDepartamento(1);
		
		//Llenamos la información de Empleado
		Empleado empleado = new  Empleado();
		empleado.setIdEmpleado(3);
		empleado.setNombre("Ximena");
		empleado.setApePaterno("Ayala");
		empleado.setApeMaterno("Mayta");
		empleado.setDireccion("Av. Brasil 1856");
		empleado.setSueldo(new BigDecimal(2500.75)); 
		empleado.setDepartamento(departamento);
		
		// Aplicamos merge
	     empleadoDAO.actualizar(empleado);
		
	}

}
