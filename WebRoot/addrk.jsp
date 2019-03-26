<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金盆超市管理系统--商品入库</title>
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
		if(document.opform.sl.value==""){
			alert("请输入入库数量！");
			return false;
		}
		if(document.opform.dj.value==""){
			alert("请输入单价！");
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
    
    }
</script>	
	
</head>

<body>
<form name="opform" method="post" action="rkop.jsp" onSubmit="javascript:return check();">
    <table width="545" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="1" bgcolor="#00cccc" style="font-size:12px">
    <!--DWLayoutTable-->
    <tr>
      <td height="25" colspan="2" align="left" valign="middle" bgcolor="#00cccc"><span class="STYLE3">商品入库信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
    </tr>
    <tr>
      <td width="115" height="25" align="center" valign="middle" bgcolor="#F9FCFF">供应商名称</td>
      <td width="427" align="left" valign="middle" bgcolor="#F9FCFF"><select name="lx" id="lx">
        <%
  lxxop lxop=new lxxop();
  
  ArrayList al=new ArrayList();
   al=lxop.getLxx();
  lxx lx=new lxx();
  for(int i=0;i<al.size();i++){
	  lx=(lxx)al.get(i);
	  
  %>
        <option value="<%=lx.getLx()%>"><%=lx.getLx()%></option>
        <%}%>
      </select>
      *</td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">商品名称</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><select name="ypid" id="ypid">
        <%
  ypxxop ypop=new ypxxop();
  
  ArrayList al2=new ArrayList();
   al2=ypop.getypxxbyall();
  ypxx yp=new ypxx();
  for(int i=0;i<al2.size();i++){
	  yp=(ypxx)al2.get(i);
	  
  %>
        <option value="<%=yp.getId()%>"><%=yp.getMc()%></option>
        <%}%>
      </select>
        *</td>
    </tr>
    
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">数量</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="sl" type="text" id="sl" value="1"  onChange="changelocation( )" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">单价</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="dj" type="text" id="dj" value="1"  onChange="changelocation( )" /></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF">金额</td>
      <td align="left" valign="middle" bgcolor="#F9FCFF"><input name="je" type="text" id="je" value="1"  /></td>
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
