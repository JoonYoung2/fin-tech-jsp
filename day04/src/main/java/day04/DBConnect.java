package day04;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection getConnect() {
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "jsp";
			String pw = "1234";
			con = DriverManager.getConnection(url, id, pw);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
