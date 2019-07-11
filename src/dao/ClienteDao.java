package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.ClienteBean;
import conexao.Conexao;

public class ClienteDao {

	//SQL
	static String sql;
	
	//Cadastrar Clientes
	public boolean cadastrar(ClienteBean obj) {
		
		//Situação
		boolean situacao = false;
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
			
			//SQL
			sql = "INSERT INTO clientes VALUES (null, ?, ?, ?, ?, ?, ?, ?)";
			
			//PSTMT
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			//Parâmetros
			pstmt.setString(1,obj.getNomeEstabelecimento());
			pstmt.setString(2,obj.getEmailCliente());
			pstmt.setString(3,obj.getSenhaCliente());
			pstmt.setString(4,obj.getTelefone());
			pstmt.setString(5,obj.getBairro());
			pstmt.setString(6,obj.getCidade());
			pstmt.setString(7,obj.getEstado());
			
			//Executando
			pstmt.execute();
			situacao = true;
			
			//finalizando conexão
			pstmt.close();
			conexao.close();
			
			
		}catch(Exception erro) {
			System.out.println("Falha ao cadastrar cliente (ClienteDao) - " + erro.getMessage());
		}
		
		//Retorno
		return situacao;
		
	}
	
	// Verificar login
	public boolean verificarLogin(String email, String senha) {

			// Conexão
			Connection conexao = Conexao.obterConexao();

			// Contador
			boolean situacao = false;

			// Tentativa
			try {

				// SQL
				sql = "SELECT * FROM clientes WHERE emailCliente=? AND senhaCliente=?";

				// PreparedStatement
				PreparedStatement pstmt = conexao.prepareStatement(sql);

				// Parametros
				pstmt.setString(1, email);
				pstmt.setString(2, senha);

				// Obter dados
				ResultSet rs = pstmt.executeQuery();

				if(rs.next()) {	
					situacao = true;
					String nome = rs.getString(2);
					System.out.println("blablabla é: "+nome);
					rs.close();
				}
				
				//Finalizando conexão
				conexao.close();
				pstmt.close();
			
			} catch (Exception erro) {
				System.out.println("Falha ao logar (Cliente Dao)" + erro.getMessage());
			}

			// Retorno
			return situacao;
		}
	
	//Excluir conta do Cliente
	public boolean excluir(int idCliente) {
		
		//Situacao
		boolean situacao = false;
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
			
			//SQL
			sql = "DELETE FROM clientes WHERE idCliente = ?";
			
			//PSTMT
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setInt(1, idCliente);
			pstmt.execute();
			
			//finalizando conexão
			pstmt.close();
			conexao.close();
			
			//Retornando verdadeiro
			situacao = true;
			
		}catch(Exception e) {
			System.out.println("Falha ao excluir cliente "+e.getMessage());
		}
		
		//Retorno
		return situacao;
		
	}

	//Dados do Cliente(dono do negócio)
	public ClienteBean dadosCliente(String email, String senha) {
		
		//Obj Bean
		ClienteBean cb = new ClienteBean();
		
		//Conexão
		Connection conexao = Conexao.obterConexao();
		
		//Tentativa
		try {
		
			//Sql
			sql ="SELECT * FROM clientes WHERE emailCliente = ? AND senhaCliente = ?";
			
			//PSTMT
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			//Parâmetros
			pstmt.setString(1, email);
			pstmt.setString(2, senha);
			
			//Rs
			ResultSet rs = pstmt.executeQuery();
			
			//laço
			while (rs.next()) {
					
				cb.setIdCliente(rs.getInt(1));
				cb.setNomeEstabelecimento(rs.getString(2));
				cb.setEmailCliente(rs.getString(3));
				cb.setSenhaCliente(rs.getString(4));
				cb.setTelefone(rs.getString(5));
				cb.setBairro(rs.getString(6));
				cb.setCidade(rs.getString(7));
				cb.setEstado(rs.getString(8));
				
			}
			
			//finalizando conexão
			pstmt.close();
			conexao.close();
			
		}catch(Exception e) {
			System.out.println("Falha ao tentar obter dados do Cliente: "+e.getMessage());
		}
		
		//Retorno
		return cb;
		
	}
	
}
