package bean;

public class ProdutoBean {

	//Atributos
	private int idProduto, fkSegmentos, fkCliente;
	private String nomeProduto;
	private double valorProduto;
	
	//Get e Set
	
	
	
	public double getValorProduto() {
		return valorProduto;
	}
	public void setValorProduto(double valorProduto) {
		this.valorProduto = valorProduto;
	}
	
	public int getIdProduto() {
		return idProduto;
	}
	public void setIdProduto(int idProduto) {
		this.idProduto = idProduto;
	}
	public int getFkSegmentos() {
		return fkSegmentos;
	}
	public void setFkSegmentos(int fkSegmentos) {
		this.fkSegmentos = fkSegmentos;
	}
	public int getFkCliente() {
		return fkCliente;
	}
	public void setFkCliente(int fkCliente) {
		this.fkCliente = fkCliente;
	}
	public String getNomeProduto() {
		return nomeProduto;
	}
	public void setNomeProduto(String nomeProduto) {
		this.nomeProduto = nomeProduto;
	}
	
	
}
