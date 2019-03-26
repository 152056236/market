<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金盆超市管理系统--增加员工</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
.STYLE4 {font-size: 14px}
-->
</style>
<script language="javascript">
 	function check(){
		var myReg=new RegExp("^[0-9]+(\.[0-9]{1,4})?$");
		var identityCard = /^(\d{15}|\d{18})$/;
		var agetest=/^(\d{1,3})$/;
		if(document.opform.yid.value==""){
			alert("请输入用户名！");
			return false;
		}
		if(document.opform.name.value==""){
			alert("请输入真实姓名！");
			return false;
		}
		if(document.opform.password.value==""){
			alert("请输入密码！");
			return false;
		}
	   document.all.regButton.disabled = true;
		 
	 	
	}
</script>
</head>

<body>
<form name="opform" method="post" action="pxxop.jsp" onSubmit="javascript:return check();">
    <table width="545" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#00cccc" style="font-size:12px">
    <!--DWLayoutTable-->
    <tr>
      <td height="25" colspan="2" align="left" valign="middle" bgcolor="#00cccc"><span class="STYLE3">员工信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
    </tr>
    <tr>
      <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">员工编号</td>
      <td width="427" align="left" valign="middle" bgcolor="#F9FCFF"><input name="yid" type="text" id="yid" />
      *</td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">真实姓名</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="name" type="text" id="name" />
        *</td>
    </tr>
    
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">密码</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="password" type="text" id="password" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">性别</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="sex" type="text" id="sex" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">年龄</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="age" type="text" id="age" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">地址</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="addr" type="text" id="addr" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">电话</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="tel" type="text" id="tel" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">身份证</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="sfz" type="text" id="sfz" size="18" maxlength="18" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">信箱</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="email" type="text" id="email" /></td>
    </tr>
  </table>
  
 

  <table width="551" border="0" cellpadding="0" cellspacing="0" align="center">
    <!--DWLayoutTable-->
    <tr>
      <td width="551" height="30" align="center" valign="middle"><input name="regButton" type="submit" id="regButton" value="注册" />
      &nbsp;</td>
    </tr>
  </table>
   <input type="hidden" name="op" value="add" />
 
 

</form>
</body>
</html>
