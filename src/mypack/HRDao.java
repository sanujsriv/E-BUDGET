package mypack;

import java.sql.PreparedStatement;

public class HRDao {
	
		public static int register(InsertBean bean){  
			String query="insert into hr values(?,?,?,?,?,?,?)";
		int status=0;  
		try{  
			ConnectionSet connectionSet=new ConnectionSet();

			connectionSet.connect();  
		PreparedStatement stmt=connectionSet.con.prepareStatement(query);  
		stmt.setFloat(1,bean.getAppraisal());  
		stmt.setFloat(2,bean.getIncentives());
		stmt.setFloat(3,bean.getTraining());
		stmt.setFloat(4,bean.getRecruitment());
		stmt.setFloat(5,bean.getAdvertisement());
		stmt.setFloat(6,bean.getMiscellaneous());
		stmt.setString(7, bean.getDate());
		              
		status=stmt.executeUpdate();  
		}catch(Exception e){}  
		      
		return status;  
		}  
		  
		}  

