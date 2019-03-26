package mypackage;

import java.sql.ResultSet;
import java.util.ArrayList;


public class lxxop {

 public void add(String lx){
		String sql="";
		try {
			DB db=new DB();
 
			sql="insert into lxx(lx)";
			sql=sql+" values('"+lx+"')";
			db.executeUpdate(sql);
			db.close();
		}catch (Exception e) {
			System.err.println("增加类型错误，错误信息："+e.getMessage());
		}
	}
 
 
  public void delete(String lx){
		DB db=new DB();
		try {
			String sql="delete from lxx where lx='"+lx+"'";
		
			db.executeUpdate(sql);			
			db.close();
		}catch (Exception e) {
			System.err.println("删除类型信息失败，错误信息："+e.getMessage());
		}
	}

   public ArrayList<lxx> getLxx(){
        ArrayList<lxx> al=new ArrayList<lxx>();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from lxx";
			ResultSet rs=db.executeQuery(sql);
			while(rs.next()){
			
		    	lxx lx = new lxx();
				lx.setLx(rs.getString("lx"));
			 
				al.add(lx);
			
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("用户信息失败，错误信息："+e.getMessage());
		}
		return al;
	}
	
	public ArrayList<lxx> getLxx2(String lxmc){
        ArrayList<lxx> al=new ArrayList<lxx>();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from lxx where lx='"+lxmc+"'";
			ResultSet rs=db.executeQuery(sql);
			while(rs.next()){
			
		    	lxx lx = new lxx();
				lx.setLx(rs.getString("lx"));
			 
				al.add(lx);
			
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("用户信息失败，错误信息："+e.getMessage());
		}
		return al;
	}

	
}