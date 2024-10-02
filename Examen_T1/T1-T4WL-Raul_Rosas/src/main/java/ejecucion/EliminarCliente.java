package ejecucion;

import dao.ClienteDAO;
import entidades.Cliente;

public class EliminarCliente {
	public static void main(String[] args) {

		ClienteDAO clienteDAO = new ClienteDAO();
		 
		Cliente cliente = new Cliente();
		cliente.setIdCliente(11);
		 
		 clienteDAO.eliminar(cliente.getIdCliente());

	}
}
