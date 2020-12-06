package connectDB;

import java.sql.Connection;
import java.sql.DriverManager;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.REUtil;

public class ConnectionUtil {
	
	public static Connection getConnection() {
		try {
			Connection con;
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
			String url = "jdbc:sqlserver://localhost:1433;databasename=db_test_api";
			String userName = "sa";
			String password = "123";
			con = DriverManager.getConnection(url, userName, password);
			System.out.println("=============================");
			System.out.println("CONNECT DATABASE SUCCESS !!!");
			System.out.println("=============================");
			return con;
		} catch (Exception e) {
			System.out.println("=============================");
			System.out.println("ERROR CONNECT DATABASE");
			System.out.println("=============================");
			System.out.println(e);
		}
		return null;
	}
}
