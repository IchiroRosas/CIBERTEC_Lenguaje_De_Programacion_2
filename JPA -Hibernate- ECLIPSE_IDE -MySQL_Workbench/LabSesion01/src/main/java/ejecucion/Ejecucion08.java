package ejecucion;

import pe.edu.cibertec.proyemp.jpa.dao.EmpleadoDAO;
import pe.edu.cibertec.proyemp.jpa.entidades.Empleado;

public class Ejecucion08 {

	public static void main(String[] args) {
		EmpleadoDAO empleadoDAO = new EmpleadoDAO();
		 
		Empleado empleado = empleadoDAO.buscar(1);

		System.out.println("Código : " + empleado.getIdEmpleado());
		System.out.println("Nombre : " + empleado.getNombre());
		System.out.println("Ape Pat: " + empleado.getApeMaterno());
		System.out.println("Ape Mat: " + empleado.getApePaterno());
		System.out.println("Direcc : " + empleado.getDireccion());

	}

}
