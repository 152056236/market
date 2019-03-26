package mypackage;

import java.sql.*;

public class DB {
	// ODBC��ʽ�������ݿ�

	 private static String driver = "com.mysql.jdbc.Driver";
	   //URLָ��Ҫ���ʵ����ݿ���mydata
	  private static String url = "jdbc:mysql://localhost:3306/market?useUnicode=true&characterEncoding=utf8";
	   //MySQL����ʱ���û���
	  private static String user = "root";
	   //MySQL����ʱ������
	  private static String password = "root";

	Connection conn = null;

	Statement stmt = null;

	ResultSet rs = null;

	public DB() {
		try {
			Class.forName(driver);
		} catch (java.lang.ClassNotFoundException e) {
			System.err.println("���ݿ�����ע�������Ϣ�� " + e.getMessage());
		}
	}

	// ִ��SQL��ѯ���
	public ResultSet executeQuery(String sql) {
		rs = null;
		try {
			conn = DriverManager.getConnection(url,user ,password );
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
		} catch (SQLException ex) {
			System.err.println("ִ��SQL��ѯ�����󣬴�����Ϣ: " + ex.getMessage());
		}
		return rs;
	}

	// ִ��SQL�������
	public void executeUpdate(String sql) {
		rs = null;
		try {
			conn = DriverManager.getConnection(url,user ,password);
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
		} catch (SQLException ex) {
			System.err.println("ִ��SQL���������󣬴�����Ϣ: " + ex.getMessage());
		}
	}

	// �ر����ݿ�����
	public void close() {
		try {
			if (stmt != null) {
				stmt.close();
				stmt = null;
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			System.err.println("ִ�йر����ݿ����ʧ�ܣ�������Ϣ: " + e.getMessage());
		}
	}
}
