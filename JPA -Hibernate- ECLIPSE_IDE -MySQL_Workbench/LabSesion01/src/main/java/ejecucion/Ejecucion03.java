package ejecucion;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import pe.edu.cibertec.proyemp.jpa.entidades.Departamento;
import pe.edu.cibertec.proyemp.jpa.entidades.Empleado;

public class Ejecucion03 {

	public static void main(String[] args) {
	 
		EntityManagerFactory fabrica=  Persistence.createEntityManagerFactory("PE");
		EntityManager manager=fabrica.createEntityManager();

		Departamento departamento01 = new Departamento();
		departamento01.setIdDepartamento(2);
		departamento01.setNombreDepartamento("MARKETING");	
		
		
		Empleado empleado01 = new Empleado();
		empleado01.setIdEmpleado(13);
		empleado01.setNombre("Juan");
		empleado01.setApePaterno("Cavero");
		empleado01.setApeMaterno("Rau");
		empleado01.setDireccion("Av. Tacna Nro 965"); 
		empleado01.setDepartamento(departamento01);
		
		try {
			
			manager.getTransaction().begin();
			manager.merge(empleado01);
			manager.getTransaction().commit();	
			System.out.println("Registro exitoso");
			
		} catch (Exception e) {
			manager.getTransaction().rollback();
			System.out.println("Ocurio algo inesperado "+e.getMessage());
			
		} finally {
			manager.close();
			System.out.println("manager cerrado");
		}
		
	}

}
