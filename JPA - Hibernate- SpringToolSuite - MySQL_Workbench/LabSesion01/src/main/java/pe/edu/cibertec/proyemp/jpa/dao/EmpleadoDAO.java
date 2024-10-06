package pe.edu.cibertec.proyemp.jpa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import pe.edu.cibertec.proyemp.jpa.entidades.Empleado;

public class EmpleadoDAO {

	EntityManagerFactory fabrica=  Persistence.createEntityManagerFactory("PE");
	
	
	public void insertar (Empleado empleado) {
		
		EntityManager manager =null;
		try {
			manager = fabrica.createEntityManager();
			manager.getTransaction().begin();
			manager.persist(empleado);
			manager.getTransaction().commit();
			
		} catch (Exception e) {
			manager.getTransaction().rollback();
			System.out.println("Ocurrio algo inesperado: "+e.getMessage() );
		} finally {
			manager.close();
		}
	}
	
	
	public void actualizar(Empleado empleado) {
		
		EntityManager manager =null;	
		try {
			manager= fabrica.createEntityManager();
			manager.getTransaction().begin(); 
			manager.merge(empleado);
			manager.getTransaction().commit(); 
			
		} catch (Exception e) {
			manager.getTransaction().rollback();
			System.out.println("Ocurrio algo inesperado: "+e.getMessage() );
		} finally {
			manager.close();
		}
	
	}

	public void eliminar(int idCodigo) {
		
		EntityManager manager =null;
		try {
			
			manager= fabrica.createEntityManager();
			Empleado empleado = manager.find(Empleado.class, idCodigo);
			if (empleado!=null) {
				manager.getTransaction().begin();
				manager.remove(empleado); 
				manager.getTransaction().commit();
			}
			
		} catch (Exception e) {
			manager.getTransaction().rollback();
			System.out.println("Ocurrio algo inesperado: "+e.getMessage() );
		} finally {
			manager.close();
		}
	}
	
	public Empleado buscar (int idCodigo) {
		EntityManager manager =null;
		try {
			
			manager=fabrica.createEntityManager();
			Empleado empleado = manager.find(Empleado.class, idCodigo);
			return empleado;
			
		} catch (Exception e) {
			System.out.println("Ocurrio algo inesperado: "+e.getMessage() );
		} finally {
			if (manager != null) {
	                manager.close();
	            }
		}
		return null;
	}
	
	
	public List<Empleado> listar() {
		
        EntityManager manager = null;
        List<Empleado> empleados = null;
        try {    	
        	 manager = fabrica.createEntityManager(); 
        	 TypedQuery<Empleado> query = manager.createQuery("SELECT e FROM Empleado e", Empleado.class);
        	 empleados = query.getResultList();
     			
        } catch (Exception e) {
			System.out.println("Ocurrio algo inesperado: "+e.getMessage() );
		} finally {
			  if (manager != null) {
	                manager.close(); 
	            }
		}
		return empleados;
	}
}
