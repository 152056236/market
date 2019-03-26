package mypackage;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class DateFormate {
    /**
     * ���ַ���sBody�е�sFrom��sTo�滻
     * @param sBody
     * @param sFrom
     * @param sTo
     * @return
     */
    public static String strReplace(String sBody, String sFrom, String sTo) {
       int i,j,l;
       if (sBody==null || sBody.equals("")) return "";
       i = 0;
       j = sFrom.length();
       StringBuffer sss = new StringBuffer(sBody.length());
       l = i;
       while (sBody.indexOf(sFrom,i)!=-1) {
         i = sBody.indexOf(sFrom,i);
         sss.append(sBody.substring(l,i));
         sss.append(sTo);
         i += j;
         l = i;
       }
       sss.append(sBody.substring(l));
       return sss.toString();
     }
    
	/**
	 * ���ַ�����ʽ���� HTML ������� ֻת�������ַ����ʺ��� HTML �еı�����
	 * 
	 * @param str
	 *            Ҫ��ʽ�����ַ���
	 * @return ��ʽ������ַ���
	 */
	public static String toHtmlInput(String str) {
		if (str == null)
			return null;
		String html = new String(str);
		html = strReplace(html, "&", "&amp;");
		html = strReplace(html, "<", "&lt;");
		html = strReplace(html, ">", "&gt;");
		return html;
	}

	/**
	 * ����ͨ�ַ�����ʽ�������ݿ��Ͽɵ��ַ�����ʽ
	 * 
	 * @param str
	 *            Ҫ��ʽ�����ַ���
	 * @return �Ϸ������ݿ��ַ���
	 */
	public static String toSql(String str) {
		String sql = new String(str);
		return strReplace(sql, "'", "''");
	}

	/**
	 * ���ַ���ת����GBK����
	 * 
	 * @param uniStr
	 * @return
	 */
	public static String toGb(String uniStr) {
		String gbStr = "";
		if (uniStr == null) {
			uniStr = "";
		}
		try {
			byte[] tempByte = uniStr.getBytes("ISO8859_1");
			gbStr = new String(tempByte, "utf-8");
		} catch (Exception ex) {
			System.out.println(ex.toString());
		}
		return gbStr;
	}

	/**
	 * ���ַ���ת����uincode����
	 * 
	 * @param gbStr
	 * @return
	 */
	public static String toUni(String gbStr) {
		String uniStr = "";
		if (gbStr == null) {
			gbStr = "";
		}
		try {
			byte[] tempByte = gbStr.getBytes("utf-8");
			uniStr = new String(tempByte, "ISO8859_1");
		} catch (Exception ex) {
		}
		return gbStr;
	}

	/**
	 * ���ַ���ת����Utf8����
	 * 
	 * @param s
	 * @return
	 */
	public static String toUtf8String(String s) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < s.length(); i++) {
			char c = s.charAt(i);
			if (c >= 0 && c <= 255) {
				sb.append(c);
			} else {
				byte[] b;
				try {
					b = Character.toString(c).getBytes("utf-8");
				} catch (Exception ex) {
					System.out.println(ex);
					b = new byte[0];
				}
				for (int j = 0; j < b.length; j++) {
					int k = b[j];
					if (k < 0) {
						k += 256;
					}
					sb.append("%" + Integer.toHexString(k).toUpperCase());
				}
			}
		}
		return sb.toString();
	}
	public static String getId(){
		Calendar c = Calendar.getInstance();
		Date date = c.getTime();
		String id=new SimpleDateFormat("yyyyMMddHHmmss").format(date);
		return id;
	}
	public static String getDateTime(){
		Calendar c = Calendar.getInstance();
		Date date = c.getTime();
		String id=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		return id;
	}
}
