package ejecucion;

import pe.edu.cibertec.proyemp.jpa.dao.EmpleadoDAO;
import pe.edu.cibertec.proyemp.jpa.entidades.Empleado;

public class Ejecucion07 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		EmpleadoDAO empleadoDAO = new EmpleadoDAO();
		 
		 Empleado empleado = new Empleado();
		 empleado.setIdEmpleado(2);
		 
		 //Llamamos a delete
		 empleadoDAO.eliminar(empleado.getIdEmpleado());

	}

}
