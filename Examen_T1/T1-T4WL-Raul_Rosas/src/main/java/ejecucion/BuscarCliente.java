package ejecucion;

import dao.ClienteDAO;
import entidades.Cliente;

public class BuscarCliente {
	public static void main(String[] args) {
		
		ClienteDAO clienteDAO = new ClienteDAO();
		 
		Cliente cliente = clienteDAO.buscar(4);

		System.out.println("IdCliente: " + cliente.getIdCliente());
		System.out.println("Nombre: " + cliente.getNombre());
		System.out.println("Apellido: " + cliente.getApellido());
		System.out.println("Correo: " + cliente.getCorreo());
		System.out.println("Fecha Nacimiento: " + cliente.getFechaNacimiento());
		System.out.println("DNI: " + cliente.getDni());

	}

}
