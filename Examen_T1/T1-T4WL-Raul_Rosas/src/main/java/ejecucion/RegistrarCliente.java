package ejecucion;

import dao.ClienteDAO;
import entidades.Categoria;
import entidades.Cliente;

public class RegistrarCliente {

	public static void main(String[] args) {
		 
		 ClienteDAO clienteDAO = new ClienteDAO();
		 
		 Categoria categoria = new Categoria();
		 categoria.setIdCategoria(3);
		 
		 Cliente cliente = new  Cliente();
		 cliente.setNombre("Javier");
		 cliente.setApellido("Salinas");
		 cliente.setCorreo("javiers@gmail.com");
		 cliente.setFechaNacimiento("1975-05-24");
		 cliente.setDni("9874562"); 
		 cliente.setCategoria(categoria); 
		
		 clienteDAO.insertar(cliente);			

	}
	
}
