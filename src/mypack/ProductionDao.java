package mypack;

import java.sql.PreparedStatement;

public class ProductionDao {
	public static int productionInsert(ProductionBean bean){
	String query="insert into production values(?,?,?,?,?)";
	int status=0;  
	try{  
		ConnectionSet connectionSet=new ConnectionSet();

		connectionSet.connect();  
	PreparedStatement stmt=connectionSet.con.prepareStatement(query);  
	stmt.setFloat(1,bean.getRaw_material());  
	stmt.setFloat(2,bean.getMachines());
	stmt.setFloat(3,bean.getPacking());
	stmt.setFloat(4,bean.getMisc());
	stmt.setString(5, bean.getDate());
	              
	status=stmt.executeUpdate();  
	}catch(Exception e){}  
	      
	return status;  
}
}
