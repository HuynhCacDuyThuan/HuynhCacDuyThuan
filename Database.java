package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Database {
	public static Connection connection() throws SQLException {

		try {
			String url = "jdbc:sqlserver://localhost\\SQLEXPRESSS:1433;databaseName=DoanCuoiKi;"
					+ "encrypt=true;trustServerCertificate=true;sslProtocol=TLSv1.2";
			String host = "sa";
			String pass = "123456789";
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection conn = DriverManager.getConnection(url, host, pass);
			return conn;
		} catch (ClassNotFoundException e) {
			System.out.println("-------");
			e.printStackTrace();
		}
		return null;
	}
}
