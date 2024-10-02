package ejecucion;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import pe.edu.cibertec.proyemp.jpa.entidades.Empleado;

public class Ejecucion04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		EntityManagerFactory fabrica=  Persistence.createEntityManagerFactory("PE");
		EntityManager manager=fabrica.createEntityManager();

		try {
			manager.getTransaction().begin();
			Empleado empl = manager.find(Empleado.class, 4);
			if (empl!=null) {
				manager.remove(empl);
			}
			
			manager.getTransaction().commit();			
			System.out.println("Eliminacion exitosa");
			
		} catch (Exception e) {
			manager.getTransaction().rollback(); 
			System.out.println("Ocurio algo inesperado "+e.getMessage());
		} finally {
			manager.close();
			System.out.println("manager cerrado");
		}
		
	}

}
