package ejecucion;

import java.util.List;

import pe.edu.cibertec.proyemp.jpa.dao.EmpleadoDAO;
import pe.edu.cibertec.proyemp.jpa.entidades.Empleado;

public class Ejecucion09 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		EmpleadoDAO  empleadoDAO = new EmpleadoDAO();	
		List<Empleado> listEmpleado = empleadoDAO.listar()  ;

		
		 for (Empleado empleado : listEmpleado) {
	            System.out.println("Código : " + empleado.getIdEmpleado());
	            System.out.println("Nombre : " + empleado.getNombre());
	            System.out.println("Ape Pat: " + empleado.getApePaterno());
	            System.out.println("Ape Mat: " + empleado.getApeMaterno());
	            System.out.println("Direcc : " + empleado.getDireccion());
	            System.out.println("Depart : " + empleado.getDepartamento().getNombreDepartamento());
	            System.out.println("Sueldo : " + empleado.getSueldo());
	            System.out.println("-------------------------------------");
	    }

		
	}

}
