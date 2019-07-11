package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import bean.ProdutoBean;
import conexao.Conexao;

public class ProdutoDao {

	//SQL
	static String sql;
	
	//Cadastrar Produto
	public boolean cadastrarProduto(ProdutoBean obj) {
		
		//Situacao
		boolean situacao = false;
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
			
			//SQL
			sql = "INSERT INTO produtos VALUES (null, ?,?,?,?)";
			
			//PSTMT
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, obj.getNomeProduto());
			pstmt.setDouble(2, obj.getValorProduto());
			pstmt.setInt(3, obj.getFkSegmentos());
			pstmt.setInt(4, obj.getFkCliente());
			
			//Executando
			
			pstmt.execute();
			
			//Fechando conexão
			pstmt.close();
			conexao.close();
			
			situacao = true;
			
		}catch(Exception erro) {
			System.out.println("Falha ao cadastrar um produto");
		}
		
		//Retorno
		return situacao;
	}

	//Excluir produtos
	public boolean excluir(int idProduto) {
			
			//Situação
			boolean situacao = false;
			
			//Conexão
			Connection conexao = Conexao.obterConexao();
			
			//Tentativa
			try {
				//SQL
				String sql = "DELETE FROM produtos WHERE idProduto = ?";
				
				//PSTMT
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				pstmt.setInt(1, idProduto);
				pstmt.execute();
				
				//Finalizando sessão
				pstmt.close();
				conexao.close();
				
				//Valor
				situacao = true;
				
			}catch(Exception e) {}
			
			//Retorno
			return situacao;
		}
	
	//Alterar
	public boolean alterarProduto(ProdutoBean pb) {
		
		//situação
		boolean valida = false;
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
		
			//SQL
			sql = "UPDATE produtos SET nomeProduto=?, valorProduto=?, fkSegmentos=? WHERE idProduto=?";
			
			//PSTMT
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, pb.getNomeProduto());
			pstmt.setDouble(2, pb.getValorProduto());
			pstmt.setInt(3, pb.getFkSegmentos());
			pstmt.setInt(4, pb.getIdProduto());
			
			//executando
			pstmt.execute();
			
			//finalizando conexão
			conexao.close();
			pstmt.close();

			valida = true;
					
		}catch(Exception erro) {
			System.out.println("erro ao alterar(ProdutoDao)"+erro.getMessage());
		}
		
		//Retorno
		return valida;
		
	}

	//Selecionar produtos
	public String exibirProdutos(int fkCliente) {  //Finalizar parte da tabela
		
		//validação
		String estrutura = "  <table class='table table-borderless tabela'>" + 
				"                <tr>" + 
				"                  <td>Código</td>" + 
				"                  <td>Produto</td>" + 
				"                  <td>Valor</td>" + 
				"                  <td>Alterar</td>" + 
				"                  <td>Excluir</td>" + 
				"                </tr>"; 
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//tentativa
		try {
			
			
			//SQL
			sql = "SELECT * FROM produtos WHERE fkCliente=?";
			
			//PSTMT
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			//Parâmetros
			pstmt.setInt(1, fkCliente);
			
			//ResultSet
			ResultSet rs = pstmt.executeQuery();
				
			//RS
			while (rs.next()) {
				
				estrutura+="<tr>";
				
				estrutura+="<td>"+rs.getInt(1)+"</td>";
				estrutura+="<td>"+rs.getString(2)+"</td>";
				estrutura+="<td>"+rs.getDouble(3)+"</td>";
				estrutura+="<td><a href='logado.jsp?User="+fkCliente+"&idProduto="+rs.getInt(1)+"'>Alterar</a></td>";
				estrutura+="<td><a href='requisicoes/excluirProduto.jsp?idProduto="+rs.getInt(1)+"&User="+fkCliente+"'>Excluir</a></td>";
				
				estrutura+="</tr>";
				
			}
			
			//Finalizando conexões
			pstmt.close();
			conexao.close();
			
		}catch(Exception erro) {
			System.out.println("Falha ao fazer a busca(ProdutoDao)"+erro.getMessage());
		}
		
		//Finalizar estrutura da tabela	
		estrutura +="</table>";
		
		//retorno
		return estrutura;
		
	}

	//Especificar produto
	public ProdutoBean especificarProduto(int idProduto) {
		
		//Obj
		ProdutoBean pb = new ProdutoBean();
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
			//SQL
			String sql = "SELECT * FROM produtos WHERE idProduto = ?";
			
			//PSTMT
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setInt(1, idProduto);
			
			//RESULTSET
			ResultSet rs = pstmt.executeQuery();
			rs.last();
			pb.setIdProduto(rs.getInt(1));
			pb.setNomeProduto(rs.getString(2));
			pb.setValorProduto(rs.getDouble(3));
			
			//Finalizando conexão
			pstmt.close();
			conexao.close();
			
		}catch(Exception e) {}
		
		//Retorno
		return pb;
	}
	
	
	
	//v gabriel
	
	//Método para retornar a tabela em código HTML	
	public String selecionar() {
	
		//Iniciar estrutura
		String estrutura = "<table class='table table-sm table-white'>";
					estrutura+="<thead>";
					estrutura+="<tr>";
						estrutura+="<td>Código</td>";
						estrutura+="<td>Produto</td>";
						estrutura+="<td>Valor</td>";
						estrutura+="<td>Comprar</td>";
					estrutura+="</tr>";		
					estrutura+="</thead>";
					
		
		//Para adicionar as linhas
		//Conexao
		Connection conexao = Conexao.obterConexao();
		try {
			String sql = "SELECT * FROM produtos";
			Statement stmt = conexao.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			//Adicionando as linhas
			while(rs.next()){
				//Add a Estrutura de linhas
				estrutura+="<tr>";
					estrutura+="<td>"+rs.getInt(1)+"</td>";
					estrutura+="<td>"+rs.getString(2)+"</td>";
					estrutura+="<td>"+rs.getString(3)+"</td>";
					estrutura+="<td><a href='produto.jsp?idProduto="+rs.getInt(1)+"'>Comprar</a></td>";
				estrutura+="</tr>";
			}
			//Fechando
			rs.close();
			stmt.close();
			conexao.close();
						
		} catch (Exception erro) {
			System.out.println("Erro ao selecionar os dados da Tabela: "+erro.getMessage());
		}		
		
		//Finalizando Estrutura da Tabela			
		estrutura+="</table>";
				
		//Retorno
		return estrutura;
	}
	
	
	
}
