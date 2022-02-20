package classes;

import java.sql.*; // *
import java.sql.DriverManager;

public class Bd {
	
	public String usuario ="root";
	public String senha="djd12123";
	
	public Connection Conectar() throws Exception
		{
			try {
				Class.forName("com.mysql.jdbc.Driver");
			
				String url = "jdbc:mysql://localhost/empregos";  
			
				java.sql.Connection conn = DriverManager.getConnection(url, usuario, senha);
				return conn;
			}catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return null;
		}
	

}
