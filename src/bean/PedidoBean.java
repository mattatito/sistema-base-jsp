package bean;

public class PedidoBean {
	
	//Atributos
	private int fkProdutos, fkUsuarios;
	private String dataPedido;
	
	//Get e Set
	public int getFkProdutos() {
		return fkProdutos;
	}
	public void setFkProdutos(int fkProdutos) {
		this.fkProdutos = fkProdutos;
	}
	public int getFkUsuarios() {
		return fkUsuarios;
	}
	public void setFkUsuarios(int fkUsuarios) {
		this.fkUsuarios = fkUsuarios;
	}
	public String getDataPedido() {
		return dataPedido;
	}
	public void setDataPedido(String dataPedido) {
		this.dataPedido = dataPedido;
	}
	
	
}
