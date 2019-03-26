package mypackage;

import java.sql.ResultSet;

/**
 * 管理员处理类
 *
 */
public class AdminOp {
	/**
	 * 根据管理ID名取得管理员信息
	 * @param userid 管理员ID
	 * @return Admin 管理员信息
	 */
	public Admin getAdmin(String userid){
		Admin admin=new Admin();
		String sql="select userid,userpass from admin where userid='"+userid+"'";
		try {
			DB db=new DB();
			ResultSet rs=db.executeQuery(sql);
			if(rs.next()){
				admin.setUserid(rs.getString(1));
				admin.setUserpass(rs.getString(2));
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("获取管理员错误，错误信息："+e.getMessage());
		}
		
		return admin;
	}
	/**
	 * 用户登录
	 * @param username　用户登录名,userpass 密码
	 * @return true 成功,false 失败
	 */
	public boolean login(String username,String userpass){
		boolean flag=false;
		try {
			DB db=new DB();
			String sql = "select count(*) from admin where userid ='"+username+"' and userpass ='"+userpass+"'";
			ResultSet rs=db.executeQuery(sql);
			if(rs.next()){
				if(rs.getInt(1)>0){
					flag = true;
				}else{
					flag = false;
				}
			}
			if(rs!=null){
				rs.close();
				rs=null;
			}
			db.close();
		}catch (Exception e) {
			System.err.println("用户登录错误，错误信息："+e.getMessage());
		}
			return flag;
	}
}
