package mypackage;

import java.sql.ResultSet;


public class LoginManager {
	public boolean testUser(String username,String password,String type){
		boolean result=false;
		String sql="";
		DB db=new DB();
		if("1".equals(type)){
			sql="select count(*) from admin where  userid='"+username+"' and userpass='"+password+"'";
		}else if("2".equals(type)){
			sql="select count(*) from pxx where   name='"+username+"' and password='"+password+"'";
		}else{
			result=false;
		}
		try{
			
			ResultSet rs=db.executeQuery(sql);
			if(rs.next()){
				if(rs.getInt(1)>0){
					result=true;
				}else{
				    result=false;
				}
			}else{
				result=false;
			}
		}catch(Exception e){
			
		}
		return result;
	}

}
