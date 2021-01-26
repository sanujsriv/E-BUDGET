package mypack;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class LoginDao {
	static Boolean b;
	
public static  boolean validate(LoginBean bean) throws SQLException
{
	
	String query="select * from login where username=? and password=? and department=?" ;	
	
	boolean status=false;
ConnectionSet connectionSet=new ConnectionSet();

	connectionSet.connect();
	PreparedStatement stmt=connectionSet.con.prepareStatement(query);
	stmt.setString(1,bean.getUsername());
	stmt.setString(2,bean.getPassword());
	stmt.setString(3,bean.getDept());
	ResultSet rs=stmt.executeQuery();
	while(rs.next())
	status=true;
	return status;
}}

