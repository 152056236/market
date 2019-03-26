package mypackage;

import java.sql.ResultSet;
import java.util.ArrayList;


public class pxxop {

 
 
 	public void add(String yid,String name,String password,String sex,String age,String addr,String tel,String sfz,String email,String jj){
		String sql="";
		try {
			DB db=new DB();
 
			sql="insert into pxx(yid,name,password,sex,age,addr,tel,sfz,email,jj)";
			sql=sql+" values('"+yid+"','"+name+"','"+password+"','"+sex+"','"+age+"','"+addr+"','"+tel+"','"+sfz+"','"+email+"',"+jj+")";
			db.executeUpdate(sql);
			db.close();
		}catch (Exception e) {
			System.err.println("增加用户错误，错误信息："+e.getMessage());
		}
	}
	
	
		public String  getName(String yid){
		String mc="";
		String sql="";	
		try{
			DB db=new DB();
			sql="select name from pxx where yid='"+yid+"'";
			ResultSet rs=db.executeQuery(sql);
			if(rs.next()){
			     mc=rs.getString(1);
			}else{
				 mc="";
			}
		}catch(Exception e){
			
		}
		return mc;
	}
		
	public void update(String yid,String name,String password,String sex,String age,String addr,String tel,String sfz,String email,String jj){
		DB db=new DB();
		try {
			String sql ="update pxx set name='"+name+"',password='"+password+"',sex='"+sex+"',age='"+age+"',addr='"+addr+"',tel='"+tel+"',sfz='"+sfz+"',email='"+email+"',jj="+jj+" where yid = '"+yid+"'";			
			db.executeUpdate(sql);
			db.close();
		}catch (Exception e) {
			System.err.println("更新信息错误，错误信息："+e.getMessage());
		}
	}
	
	
	public void delete(String yid){
		DB db=new DB();
		try {
			String sql="delete from pxx where yid='"+yid+"'";
			db.close();
			db.executeUpdate(sql);			

		}catch (Exception e) {
			System.err.println("删除用户信息失败，错误信息："+e.getMessage());
		}
	}
	
	public void update(String yid,String name,String sex,String age,String addr,String tel,String sfz,String email,String jj){
		DB db=new DB();
		try {
			String sql ="update pxx set name='"+name+"',sex='"+sex+"',age='"+age+"',addr='"+addr+"',tel='"+tel+"',sfz='"+sfz+"',email='"+email+"',"+jj+" where yid = '"+yid+"'";			
			db.executeUpdate(sql);
			db.close();
		}catch (Exception e) {
			System.err.println("更新用户信息错误，错误信息："+e.getMessage());
		}
	}
	
	
	public ArrayList<pxx> getPxx(){
        ArrayList<pxx> al=new ArrayList<pxx>();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from pxx";
			ResultSet rs=db.executeQuery(sql);
			while(rs.next()){
			
		    	pxx yx = new pxx();
				yx.setYid(rs.getString("yid"));
				yx.setName(rs.getString("name"));
				yx.setSex(rs.getString("sex"));
				yx.setAge(rs.getString("age"));
				yx.setAddr(rs.getString("addr"));
				yx.setTel(rs.getString("tel"));
				yx.setSfz(rs.getString("sfz"));
				yx.setEmail(rs.getString("email"));
			    yx.setJj(rs.getString("jj"));
				al.add(yx);
			
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
	
		public ArrayList<pxx> getPxx2(String yid){
        ArrayList<pxx> al=new ArrayList<pxx>();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from pxx where yid='"+yid+"'";
			ResultSet rs=db.executeQuery(sql);
			while(rs.next()){
			
		    	pxx yx = new pxx();
				yx.setYid(rs.getString("yid"));
				yx.setName(rs.getString("name"));
				yx.setSex(rs.getString("sex"));
				yx.setAge(rs.getString("age"));
				yx.setAddr(rs.getString("addr"));
				yx.setTel(rs.getString("tel"));
				yx.setSfz(rs.getString("sfz"));
				yx.setEmail(rs.getString("email"));
			    yx.setJj(rs.getString("jj"));
				al.add(yx);
			
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
	
	
	
		public pxx getPxxBid(String yid){
    	pxx yx = new pxx();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from pxx where yid='"+yid+"'";
			ResultSet rs=db.executeQuery(sql);
			if(rs.next()){	
		 
				yx.setYid(rs.getString("yid"));
				yx.setName(rs.getString("name"));
				yx.setSex(rs.getString("sex"));
				yx.setAge(rs.getString("age"));
				yx.setAddr(rs.getString("addr"));
				yx.setTel(rs.getString("tel"));
				yx.setSfz(rs.getString("sfz"));
				yx.setEmail(rs.getString("email"));
			    yx.setJj(rs.getString("jj"));
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("用户信息失败，错误信息："+e.getMessage());
		}
		return yx;
	}
	
		public float getje(){
		float result=0;
		String sql="";
		DB db=new DB();
	 
	    sql="select sum(sj) from dxx";
	 
		try{
			
			ResultSet rs=db.executeQuery(sql);
			if(rs.next()){
			     result=rs.getFloat(1);
			}else{
				result=0;
			}
		}catch(Exception e){
			
		}
		
		
		
		
		
		return result;
	}

	
	
	
}