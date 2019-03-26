  package mypackage;

import java.sql.ResultSet;
import java.util.ArrayList;


public class rkxxop {

    	public void add(String id,String lx,String ypid,String sl,String dj,String je,String rq){
		String sql="";
		try {
			DB db=new DB();
 
			sql="insert into rkxx(id,lx,ypid,sl,dj,je,rq)";
			sql=sql+" values('"+id+"','"+lx+"','"+ypid+"',"+sl+","+dj+","+je+",'"+rq+"')";
			db.executeUpdate(sql);
			sql="update ypxx set sl=sl+"+sl+" where id='"+ypid+"'";
			db.executeUpdate(sql);
			db.close();
		}catch (Exception e) {
			System.err.println("增加错误，错误信息："+e.getMessage());
		}
	}
    
    
    	public ArrayList<rkxx> getrkxxbyall(){
        ArrayList<rkxx> al=new ArrayList<rkxx>();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from rkxx";
			ResultSet rs=db.executeQuery(sql);
			while(rs.next()){
		    	rkxx rk= new rkxx();
				rk.setId(rs.getString("id"));
				rk.setLx(rs.getString("lx"));
				rk.setYpid(rs.getString("ypid"));
				rk.setSl(rs.getString("sl"));
				rk.setDj(rs.getString("dj"));
				rk.setJe(rs.getString("je"));
				rk.setRq(rs.getString("rq"));
				al.add(rk);
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("信息失败，错误信息："+e.getMessage());
		}
		return al;
	}
	
	public ArrayList<rkxx> getrkxxbyid(String id){
        ArrayList<rkxx> al=new ArrayList<rkxx>();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from rkxx where id='"+id+"'";
			ResultSet rs=db.executeQuery(sql);
			while(rs.next()){
		    	rkxx rk= new rkxx();
				rk.setId(rs.getString("id"));
				rk.setLx(rs.getString("lx"));
				rk.setYpid(rs.getString("ypid"));
				rk.setSl(rs.getString("sl"));
				rk.setDj(rs.getString("dj"));
				rk.setJe(rs.getString("je"));
				rk.setRq(rs.getString("rq"));
				al.add(rk);
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("信息失败，错误信息："+e.getMessage());
		}
		return al;
	}
	
	
	
	
    
}