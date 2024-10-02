package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import entidades.Cliente;

public class ClienteDAO {

EntityManagerFactory fabrica=  Persistence.createEntityManagerFactory("PE");
	
	
	public void insertar (Cliente cliente) {
		
		EntityManager manager =null;
		try {
			manager = fabrica.createEntityManager();
			manager.getTransaction().begin();
			manager.persist(cliente);
			manager.getTransaction().commit();
			
		} catch (Exception e) {
			manager.getTransaction().rollback();
			System.out.println("Ocurrio algo inesperado: "+e.getMessage() );
		} finally {
			manager.close();
		}
	}
	
	
	public void actualizar(Cliente cliente) {
		
		EntityManager manager =null;	
		try {
			manager= fabrica.createEntityManager();
			manager.getTransaction().begin(); 
			manager.merge(cliente);
			manager.getTransaction().commit(); 
			
		} catch (Exception e) {
			manager.getTransaction().rollback();
			System.out.println("Ocurrio algo inesperado: "+e.getMessage() );
		} finally {
			manager.close();
		}
	
	}

	public void eliminar(int idCli) {
		
		EntityManager manager =null;
		try {
			
			manager= fabrica.createEntityManager();
			Cliente cliente = manager.find(Cliente.class, idCli);
			if (cliente!=null) {
				manager.getTransaction().begin();
				manager.remove(cliente); 
				manager.getTransaction().commit();
			}
			
		} catch (Exception e) {
			manager.getTransaction().rollback();
			System.out.println("Ocurrio algo inesperado: "+e.getMessage() );
		} finally {
			manager.close();
		}
	}
	
	public Cliente buscar (int idCli) {
		EntityManager manager =null;
		try {
			
			manager=fabrica.createEntityManager();
			Cliente cliente = manager.find(Cliente.class, idCli);
			return cliente;
			
		} catch (Exception e) {
			System.out.println("Ocurrio algo inesperado: "+e.getMessage() );
		} finally {
			if (manager != null) {
	                manager.close();
	            }
		}
		return null;
	}
	
	
	public List<Cliente> listar() {
		
        EntityManager manager = null;
        List<Cliente> clientes = null;
        try {    	
        	 manager = fabrica.createEntityManager(); 
        	 TypedQuery<Cliente> query = manager.createQuery("SELECT c FROM Cliente c", Cliente.class);
        	 clientes = query.getResultList();
     			
        } catch (Exception e) {
			System.out.println("Ocurrio algo inesperado: "+e.getMessage() );
		} finally {
			  if (manager != null) {
	                manager.close(); 
	            }
		}
		return clientes;
	}
	
}
