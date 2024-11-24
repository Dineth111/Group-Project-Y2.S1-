package Customer;

import java.sql.DriverManager;
import com.mysql.jdbc.Connection;

public class DBconnect {
	private static String url = "jdbc:mysql://localhost:3306/customercaresystem"; 
	private static String username = "root";
	private static String password = "12345";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = (Connection) DriverManager.getConnection(url, username, password);
		}
		
		catch (Exception e) {
			System.out.println("Database connection is not success !!!");
		}
		
		return con;
	}

}
