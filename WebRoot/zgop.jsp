<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<%
String op=DateFormate.toGb((String)request.getParameter("op"));
String username="",password="",zgh="",name="",sex="",age="",addr="",tel="",id="",zw="",salary="",photo="";
String stime="",etime="",school="",zmr="",danwei="",guanxi="",newzw="",oldzw="",time="",kind="";
String title="",content="",fj="";
ZgManager zm=new ZgManager();
  if("modipass".equals(op)){
	String oldp=DateFormate.toGb((String)session.getAttribute("s_userpasword"));
	String old=DateFormate.toGb((String)request.getParameter("old"));
	String newp=DateFormate.toGb((String)request.getParameter("newp"));
	String usertype=DateFormate.toGb((String)session.getAttribute("s_usertype"));
	String userid=(String)session.getAttribute("s_username");
	System.out.println(usertype+"     "+userid);
	
	if(!oldp.equals(old)){
		%>
		<script language="javascript">
		alert("原始密码错误");
		document.location.href="modipass.jsp";
		</script>
		<%			
	}else{
		zm.setPassword(userid,usertype,newp); 	
	}
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="modipass.jsp";
	</script>
	<%	
} 

 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金盆超市管理系统--人员处理</title>
</head>

<body>
</body>
</html>
