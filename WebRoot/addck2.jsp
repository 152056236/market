<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金盆超市管理系统--商品销售结账</title>
<%
  ypxxop ypop=new ypxxop();
%>
<script language="javascript">
 	function check(){
		var myReg=new RegExp("^[0-9]+(\.[0-9]{1,4})?$");
		var identityCard = /^(\d{15}|\d{18})$/;
		var agetest=/^(\d{1,3})$/;
		if(document.opform.sl.value==""){
			alert("请输入药品入库数量！");
			return false;
		}
		if(document.opform.dj.value==""){
			alert("请输入商品单价！");
			return false;
		}
		if(document.opform.je.value==""){
			alert("请输入金额数量！");
			return false;
		}
	   document.all.regButton.disabled = true;
		 
	 	
	}
</script>
<script language = "JavaScript">
 
function changelocation()
    {
    document.opform.je.value=document.opform.sl.value*document.opform.dj.value
    document.opform.zl.value=document.opform.ss.value-document.opform.je.value
    }
	
</script>
<%	

String lx=DateFormate.toGb(request.getParameter("lx"));
String ypid=DateFormate.toGb(request.getParameter("ypid"));
 
String sl=DateFormate.toGb(request.getParameter("sl"));
String lsj=ypop.getlsj(ypid);
String ypmc=ypop.getMc(ypid);


%>
<style type="text/css">
<!--
.STYLE1 {
	color: #0000FF;
	font-weight: bold;
}
.STYLE3 {color: #FF0000; font-weight: bold; }
.STYLE5 {
	color: #000099;
	font-weight: bold;
	font-size: 14px;
}
-->
</style>
</head>

<body>
<form name="opform" method="post" action="ckop.jsp" onSubmit="javascript:return check();">
    <table width="545" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#00cccc" style="font-size:12px">
    <!--DWLayoutTable-->
    <tr>
      <td height="25" colspan="2" align="left" valign="middle" bgcolor="#00cccc"><div align="center"><span class="STYLE5">商品销售结帐</span></div></td>
    </tr>
    
    <tr>
      <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE1">商品名称</span></td>
      <td width="427" align="left" valign="middle" bgcolor="#F9FCFF"><input name="ypmc" type="text" id="ypmc" value="<%=ypmc%>"   /></td>
    </tr>
    
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE1">零售价</span></td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="dj" type="text" id="dj" value="<%=lsj%>"  onChange="changelocation( )" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE1">数量</span></td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="sl" type="text" id="sl" value="<%=sl%>" onChange="changelocation( )" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE3">应收金额</span></td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="je" type="text" id="je" value="0"   onChange="changelocation( )" ></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE3">实收金额</span></td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="ss" type="text" id="ss" value="0"   onChange="changelocation( )" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE3">找零金额</span></td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="zl" type="text" id="zl" value="0"   ></td>
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
<input type="hidden" name="ypid" value="<%=ypid%>" />
 <script language = "JavaScript">
 
 
    document.opform.je.value=document.opform.sl.value*document.opform.dj.value
    document.opform.zl.value=document.opform.ss.value-document.opform.je.value
 
	
</script>

</form>
</body>
</html>
