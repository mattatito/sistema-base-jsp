package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.Statement;

import bean.UsuarioBean;
import conexao.Conexao;

public class UsuarioDao {

	//login
	public int vericarLogin(String Nome,String CPF) {
		
		//conexao
		Connection conexao = Conexao.obterConexao();
		
		boolean valida =  true;
		
		try {
			String sql = "SELECT * FROM usuarios WHERE nomeUsuario = ? , cpfUsuario = ?";
			
			//prepareState
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			//parametros
			pstmt.setString(1, Nome);
			pstmt.setString(2, CPF);
			
			//obter dados
			ResultSet rs= pstmt.executeQuery();
			
			
		}catch(Exception erro) {
			System.out.println("Falha ao logar"+ erro.getMessage());
		}
		//retorno
		valida = false;
		return 0;
	}
	
	//obter dados do usuario
	
	public UsuarioBean dadosUsuario (int idUsuario) {
		
		UsuarioBean ub = new UsuarioBean();
		
		Connection conexao = Conexao.obterConexao();
		
		
		
		try {
			String sql = "SELECT * FROM usuarios WHERE idUsuario = ? ";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setInt(1, idUsuario);
			
			
			ResultSet rs = pstmt.executeQuery();
			
			//obter dados
			ub.setIdUsuario(rs.getInt(1));
			ub.setNomeUsuario(rs.getString(2));
			ub.setEmailUsuario(rs.getString(3));
			ub.setBairroUsuario(rs.getString(4));
			ub.setCidade(rs.getString(5));
			ub.setEstado(rs.getString(6));
			ub.setCpfUsuario(rs.getString(7));
			ub.setTelefoneUsuario(rs.getString(8));
			
		}catch (Exception erro) {
			System.out.println("falha ao obter dados"+erro.getMessage());
		}
		
		return ub;
	}
	
	//cadastro
	public boolean cadastrar(UsuarioBean ub) {
		boolean situacao = false;
		
		Connection conexao = Conexao.obterConexao();
		
		try {
			String sql = "INSERT INTO usuarios VALUES (null,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setString(1, ub.getNomeUsuario());
			pstmt.setString(2, ub.getEmailUsuario());
			pstmt.setString(3, ub.getBairroUsuario());
			pstmt.setString(4, ub.getCidade());
			pstmt.setString(5, ub.getEstado());
			pstmt.setString(6, ub.getCpfUsuario());
			pstmt.setString(7, ub.getTelefoneUsuario());
			
			
			pstmt.execute();
			
			
			pstmt.close();
			conexao.close();
			
			situacao = true;
		}catch(Exception erro) {
			System.out.println("falha ao cadastrar "+ erro.getMessage());
		}
		
		return situacao;
		
	}
	
	//selecionar usuario
	public String selecionar() {
		//iniciar estrutura
		String selecao = "<table class='tabelaUsuario'>";
				selecao += "<tr>";
					selecao+="<td>Código</td>";
					selecao+="<td>Nome</td>";
					selecao+="<td>E-Mail</td>";
					selecao+="<td>Bairro</td>";
					selecao+="<td>Cidade</td>";
					selecao+="<td>Estado</td>";
					selecao+="<td>CPF</td>";
					selecao+="<td>Telefone</td>";
					selecao+="<td>Alterar</td>";
					selecao+="<td>Excluir</td>";

				selecao+= "</tr>";
			//conexao
				Connection conexao = Conexao.obterConexao();
			//tentativa
				try {
					String sql = "Select * FROM usuarios";
					Statement stmt = conexao.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						selecao+="<tr>";
						selecao+="<td>"+rs.getInt(0)+"</td>";
						selecao+="<td>"+rs.getString(1)+"</td>";
						selecao+="<td>"+rs.getString(2)+"</td>";
						selecao+="<td>"+rs.getString(3)+"</td>";
						selecao+="<td>"+rs.getString(4)+"</td>";
						selecao+="<td>"+rs.getString(5)+"</td>";
						selecao+="<td>"+rs.getString(6)+"</td>";
						selecao+="<td>"+rs.getString(7)+"</td>";
						selecao+="<td><a href='Usuario.jsp?idUsuario="+rs.getInt(0)+"'>Alterar</a></td>";
						selecao+="<td><a href='requisicao/excluirUsuario.jsp?idUsuario="+rs.getInt(0)+"'>Excluir</td>";
						selecao+="</tr>";
						
							
					}
					stmt.close();
					conexao.close();
				}catch(Exception e) {}
				
				//finalizar estrutua
				selecao+="<tabela>";
			//retorno
				return selecao;
				

	}
	
	//excluir
	public boolean excluir(int idUsuario) {
		//situation
		boolean situation = false;
		
		//conexao
		Connection conexao = Conexao.obterConexao();
		
		//tentativa
		try {
			String sql = "Delete FROM usuarios WHERE idUsuario = ?";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setInt(0, idUsuario);
			pstmt.execute();
			situation = true;
		}catch(Exception e) {}
		
		//retorno
		return situation;
	}
	
	
	//selecionar dados do produto especifico
	public UsuarioBean selecionarUsuario(int idUsuario) {
		
		//objeto
		UsuarioBean ub = new UsuarioBean();
		
		//conexao
		Connection conexao = Conexao.obterConexao();
		
		//tentatica
		try {
			String sql = "SELECT * FROM usuarios WHERE idUsuario = ?";
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			pstmt.setInt(1, idUsuario);
			
			ResultSet rs= pstmt.executeQuery();
			rs.next();
			ub.setIdUsuario(rs.getInt(0));
			ub.setNomeUsuario(rs.getString(1));
			ub.setEmailUsuario(rs.getString(2));
			ub.setBairroUsuario(rs.getString(3));
			ub.setCidade(rs.getString(4));
			ub.setEstado(rs.getString(5));
			ub.setCpfUsuario(rs.getString(6));
			ub.setTelefoneUsuario(rs.getString(7));
		
		pstmt.close();
		conexao.close();
		
		
		}catch(Exception e) {}
		//retorno
		return ub;
	}

	
}

