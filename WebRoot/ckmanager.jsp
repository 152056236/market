<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> </title>
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
	function del(id){
		if(confirm("您真的要删除选择的记录吗？")){
				document.location.href="jsop.jsp?op=del&id="+id;
		}	
	}
	function check(){
		if(document.zgform.svalue.value==""){
			alert("请输入查询内容");
			return false;
		}
	}
	
</script>
</head>

<body>
<form name="zgform" action="ypmanager.jsp" method="post" onsubmit="javascript:return check();">
<table width="864" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#00cccc" style="font-size:12px">
  <!--DWLayoutTable-->
  <tr>
    <td height="25" colspan="7" align="left" valign="middle" bgcolor="#00cccc"><span class="STYLE1"> &nbsp;商品销售统计&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </td>
  </tr>
  <tr>
    <td width="151" align="center" valign="middle" bgcolor="#F9FCFF">单据编号</td>
    <td width="119" align="center" valign="middle" bgcolor="#F9FCFF">销售员</td>
    <td width="161" height="25" align="center" valign="middle" bgcolor="#F9FCFF">商品名称</td>
    <td width="105" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">销售数量</td>
    <td width="105" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">单价</td>
    <td width="109" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">金额</td>
    <td width="158" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">销售日期</td>
    </tr>
  <%
  ypxxop ypop=new ypxxop();
  ckxxop ckop=new ckxxop();
  String op=DateFormate.toGb((String)request.getParameter("op"));
  String svalue=DateFormate.toGb((String)request.getParameter("svalue"));
  
  ArrayList al=new ArrayList();
  
  al=ckop.getckxxbyall();
 
 ckxx ck=new ckxx();
  for(int i=0;i<al.size();i++){
	  ck=(ckxx)al.get(i);
	  
  %>
  <tr>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=ck.getId() %></span></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%="tom" %></span></td>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=ypop.getMc(ck.getYpid()) %></span></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=ck.getSl() %></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=ck.getDj() %></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=ck.getJe() %></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=ck.getRq() %></td>
    </tr>
  <%
  }
  
  %>
</table>
<input name="op" type="hidden" value="search" />
</form>
</body>
</html>
