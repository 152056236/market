package mypackage;

import java.sql.ResultSet;

/**
 * ����Ա������
 *
 */
public class AdminOp {
	/**
	 * ���ݹ���ID��ȡ�ù���Ա��Ϣ
	 * @param userid ����ԱID
	 * @return Admin ����Ա��Ϣ
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
			System.err.println("��ȡ����Ա���󣬴�����Ϣ��"+e.getMessage());
		}
		
		return admin;
	}
	/**
	 * �û���¼
	 * @param username���û���¼��,userpass ����
	 * @return true �ɹ�,false ʧ��
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
			System.err.println("�û���¼���󣬴�����Ϣ��"+e.getMessage());
		}
			return flag;
	}
}
