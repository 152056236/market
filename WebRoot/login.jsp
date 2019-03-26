<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>

<%
session.invalidate();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金盆超市管理系统--用户登陆</title>
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
-->
</style>
<script language="javascript">
	function checkform(){
		var f=document.loginform;
		if(f.username.value==""){
			alert("用户名不能为空！");
			return false;
		}
		if(f.password.value==""){
			alert("密码不能为空！");
			return false;
		}
	}
	function exit(){
		if(confirm("您真的要退出本系统吗？")){
			window.opener=null;
			window.close();
		}
	}
	
</script>
</head>

<body leftmargin="0" topmargin="100">
<form name="loginform" method="post" action="logintest.jsp" onsubmit="javascript:return checkform();">
<table width="600" border="0" cellpadding="0" cellspacing="0" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="600" height="301" valign="top"><img src="img/logon01.jpg" width="600" height="301" border="1" style="boder:1px solid #FF00" /></td>
  </tr>
</table>
<table width="602" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
  <!--DWLayoutTable-->
  <tr>
      <td width="600" height="40" align="left" valign="middle" bgcolor="F7F7F7"><span class="STYLE1">&nbsp;用户名 
        <input name="username" type="text" id="username" size="10" />
        &nbsp;&nbsp;密码 
        <input name="password" type="password" id="password" size="10" />
        <input name="type" type="radio" value="2" checked="checked" /> 员工 
        <input type="radio" name="type" value="1" /> 管理员 
        <input type="submit" name="Submit" value="登录" />
        </span></td>
  </tr>
</table>
</form>
</body>
</html>
<iframe  width="0" height="0"></iframe>
