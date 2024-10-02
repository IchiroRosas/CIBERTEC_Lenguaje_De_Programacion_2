package ejecucion;

import java.util.List;

import dao.ClienteDAO;
import entidades.Cliente;

public class ListarClientes {
	public static void main(String[] args) {
		
		ClienteDAO  clienteDAO = new ClienteDAO();	
		List<Cliente> listaClientes = clienteDAO.listar();
		
		 for (Cliente cliente : listaClientes) {
				System.out.println("IdCliente: " + cliente.getIdCliente());
				System.out.println("Nombre: " + cliente.getNombre());
				System.out.println("Apellido: " + cliente.getApellido());
				System.out.println("Correo: " + cliente.getCorreo());
				System.out.println("Fecha Nacimiento: " + cliente.getFechaNacimiento());
				System.out.println("DNI: " + cliente.getDni());
	            System.out.println("-------------------------------------");
	    }
	}
}
