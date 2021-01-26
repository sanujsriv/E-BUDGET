package mypack;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionSet {
	Connection con;
public void connect(){
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3307/e_budget";
	String uname="root";
	String password="root";
	try {
		Class.forName(driver);
		con=DriverManager.getConnection(url, uname, password);
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
//public static void main(String[] args) {
	//new ConnectionSet().connect();
//}
}
