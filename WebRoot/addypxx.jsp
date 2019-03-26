<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金盆超市管理系统--添加商品</title>
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
		if(document.opform.mc.value==""){
			alert("请输入名称！");
			return false;
		}
		if(document.opform.lsj.value==""){
			alert("请输入零售价！");
			return false;
		}
		if(document.opform.sl.value==""){
			alert("请输入当前库存数量！");
			return false;
		}
	   document.all.regButton.disabled = true;
		 
	 	
	}
</script>
</head>

<body>
<form name="opform" method="post" action="ypxxop.jsp" onSubmit="javascript:return check();">
    <table width="545" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#00cccc" style="font-size:12px">
    <!--DWLayoutTable-->
    <tr>
      <td height="25" colspan="2" align="left" valign="middle" bgcolor="#00cccc"><span class="STYLE3">添加商品基本信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
    </tr>
    <tr>
      <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">商品名称</td>
      <td width="427" align="left" valign="middle" bgcolor="#F9FCFF"><input name="mc" type="text" id="mc" />
      *</td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">类别</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="jx" type="text" id="jx" />
        *</td>
    </tr>
    
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">规格</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="gg" type="text" id="gg" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">型号</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="ph" type="text" id="ph"  /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">单位</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="dw" type="text" id="dw" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">零销价</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="lsj" type="text" id="lsj" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">生产厂家</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="cj" type="text" id="cj" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">库存数量</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="sl" type="text" id="sl" size="18" maxlength="18" /></td>
    </tr>
  </table>
  
 

  <table width="551" border="0" cellpadding="0" cellspacing="0" align="center">
    <!--DWLayoutTable-->
    <tr>
      <td width="551" height="30" align="center" valign="middle"><input name="regButton" type="submit" id="regButton" value="保存" />
      &nbsp;</td>
    </tr>
  </table>
   <input type="hidden" name="op" value="add" />
 
 

</form>
</body>
</html>
