package mypack;

import java.sql.PreparedStatement;

public class MarketingDao {
	public static int marketInsert(MarketingBean bean){
		String query="insert into marketing values(?,?,?,?,?)";
		int status=0;  
		try{  
			ConnectionSet connectionSet=new ConnectionSet();

			connectionSet.connect();  
		PreparedStatement stmt=connectionSet.con.prepareStatement(query);  
		stmt.setFloat(1,bean.getPurchasing());  
		stmt.setFloat(2,bean.getPromotion());
		stmt.setFloat(3,bean.getReviewExpanses());
		stmt.setFloat(4,bean.getMisc());
		stmt.setString(5, bean.getDate());
		              
		status=stmt.executeUpdate();  
		}catch(Exception e){}  
		      
		return status;  
}
}