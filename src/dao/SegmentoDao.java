package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import conexao.Conexao;

public class SegmentoDao {

	private static String sql;
	
	public String comboBox(){
		
		//Estrutura do ComboBOx
		String estrutura="<select class='custom-select' id='inputGroupSelect01'  name='segmento'>";
				
		//Conexão
		Connection conexao = Conexao.obterConexao();
						
		//Tentativa
		try {
			
			//SQL
			sql = "SELECT * FROM segmentos";
			
			//Statement
			Statement stmt = conexao.createStatement();
			
			//ResultSet
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				estrutura+="<option value="+rs.getInt(1)+">"+rs.getString(2)+"</option>";
			}
			
			
		}catch(Exception e) {System.out.println("Falha ao obter dados SEGMENTO: "+e.getMessage());}
	
		estrutura += "</select>";
		//Retorno
		return estrutura;
	}
	
	
	
	
	
}
