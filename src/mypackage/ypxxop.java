 package mypackage;

import java.sql.ResultSet;
import java.util.ArrayList;

public class ypxxop {

    	public void add(String id,String mc,String jx,String gg,String ph,String dw,String lsj,String sl,String cj){
		String sql="";
		try {
			DB db=new DB();
 
			sql="insert into ypxx(id,mc,jx,gg,ph,dw,lsj,sl,cj)";
			sql=sql+" values('"+id+"','"+mc+"','"+jx+"','"+gg+"','"+ph+"','"+dw+"',"+lsj+","+sl+",'"+cj+"')";
			db.executeUpdate(sql);
			db.close();
		}catch (Exception e) {
			System.err.println("���Ӵ��󣬴�����Ϣ��"+e.getMessage());
		}
	}
    
    public void update(String id,String mc,String jx,String gg,String ph,String dw,String lsj,String sl,String cj){
		DB db=new DB();
		try {
			String sql ="update ypxx set mc='"+mc+"',jx='"+jx+"',gg='"+gg+"',ph='"+ph+"',dw='"+dw+"',lsj="+lsj+",sl="+sl+",cj='"+cj+"' where id = '"+id+"'";			
			db.executeUpdate(sql);
			db.close();
		}catch (Exception e) {
			System.err.println("������Ϣ���󣬴�����Ϣ��"+e.getMessage());
		}
	}
	
		public void delete(String id){
		DB db=new DB();
		try {
			String sql="delete from ypxx where id='"+id+"'";
			db.close();
			db.executeUpdate(sql);			

		}catch (Exception e) {
			System.err.println("ɾ����Ϣʧ�ܣ�������Ϣ��"+e.getMessage());
		}
	}
	
	
		public ArrayList<ypxx> getypxxbyall(){
        ArrayList<ypxx> al=new ArrayList<ypxx>();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from ypxx";
			ResultSet rs=db.executeQuery(sql);
			while(rs.next()){
		    	ypxx yp= new ypxx();
				yp.setId(rs.getString("id"));
				yp.setMc(rs.getString("mc"));
				yp.setJx(rs.getString("jx"));
				yp.setGg(rs.getString("gg"));
				yp.setPh(rs.getString("ph"));
				yp.setDw(rs.getString("dw"));
				yp.setLsj(rs.getString("lsj"));
				yp.setSl(rs.getString("sl"));
				yp.setCj(rs.getString("cj"));
				al.add(yp);
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("��Ϣʧ�ܣ�������Ϣ��"+e.getMessage());
		}
		return al;
	}
	
		public ArrayList<ypxx> getypxxbyid(String id){
        ArrayList<ypxx> al=new ArrayList<ypxx>();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from ypxx where id='"+id+"'";
			ResultSet rs=db.executeQuery(sql);
			while(rs.next()){
		    	ypxx yp= new ypxx();
				yp.setId(rs.getString("id"));
				yp.setMc(rs.getString("mc"));
				yp.setJx(rs.getString("jx"));
				yp.setGg(rs.getString("gg"));
				yp.setPh(rs.getString("ph"));
				yp.setDw(rs.getString("dw"));
				yp.setLsj(rs.getString("lsj"));
				yp.setSl(rs.getString("sl"));
				yp.setCj(rs.getString("cj"));
				al.add(yp);
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("��Ϣʧ�ܣ�������Ϣ��"+e.getMessage());
		}
		return al;
	}
	
	
		public  ypxx  getypxxbyid2(String id){
     	ypxx yp= new ypxx();
		String sql="";
		try {
			DB db=new DB();
			sql="select * from ypxx where id='"+id+"'";
			ResultSet rs=db.executeQuery(sql);
			if(rs.next()){
				yp.setId(rs.getString("id"));
				yp.setMc(rs.getString("mc"));
				yp.setJx(rs.getString("jx"));
				yp.setGg(rs.getString("gg"));
				yp.setPh(rs.getString("ph"));
				yp.setDw(rs.getString("dw"));
				yp.setLsj(rs.getString("lsj"));
				yp.setSl(rs.getString("sl"));
				yp.setCj(rs.getString("cj"));
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("��Ϣʧ�ܣ�������Ϣ��"+e.getMessage());
		}
		return yp;
	}
	
	
		public String  getMc(String id){
		String mc="";
		String sql="";	
		try{
			DB db=new DB();
			sql="select mc from ypxx where id='"+id+"'";
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
	
		public String  getlsj(String id){
		String mc="";
		String sql="";	
		try{
			DB db=new DB();
			sql="select lsj from ypxx where id='"+id+"'";
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
	
	
	
    
}