package mypack;

import java.sql.PreparedStatement;

public class FinanceDao {
	public static int register(FinanceBean bean){  
		String query="insert into finance values(?,?,?,?,?,?,?)";
	int status=0;  
	try{  
		ConnectionSet connectionSet=new ConnectionSet();

		connectionSet.connect();  
	PreparedStatement stmt=connectionSet.con.prepareStatement(query);  
	stmt.setFloat(1,bean.getPayroll());  
	stmt.setFloat(2,bean.getTaxes());
	stmt.setFloat(3,bean.getBills());
	stmt.setFloat(4,bean.getInsurance());
	stmt.setFloat(5,bean.getRents());
	stmt.setFloat(6,bean.getOthers());
	stmt.setString(7, bean.getDate());
	              
	status=stmt.executeUpdate();  
	}catch(Exception e){}  
	      
	return status;  
}
}