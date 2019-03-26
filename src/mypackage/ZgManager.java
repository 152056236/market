package mypackage;

import java.sql.ResultSet;
import java.util.ArrayList;
 

public class ZgManager {
 

	public void setPassword(String username,String usertype,String newpass){
		String sql="";
		DB db=new DB();
		if("1".equals(usertype)){
	    	sql="update guanli set password='"+newpass+"' where username='"+username+"'";
		}else if("2".equals(usertype)){
			sql="update pxx set password='"+newpass+"' where yid='"+username+"'";
		 
		}
		try{
			db.executeUpdate(sql);
		}catch(Exception e){
			System.err.println("ĞŞ¸ÄÃÜÂë´íÎó£¬´íÎóĞÅÏ¢£º"+e.getMessage());
		}
	}
}
