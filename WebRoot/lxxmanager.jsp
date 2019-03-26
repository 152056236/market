<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金盆超市管理系统--供应商信息管理</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
.STYLE4 {font-size: 14px}
-->
</style>
 
</head>

<body>
<form name="zgform" action="lxxmanager.jsp" method="post" onsubmit="javascript:return check();">
<table width="624" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#00cccc" style="font-size:12px">
  <!--DWLayoutTable-->
  <tr>
    <td height="25" colspan="2" align="left" valign="middle"><span class="STYLE1">[<a href="addlx.jsp">新增供应商信息</a>]&nbsp;&nbsp;供应商信息管理 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>名称：
      <input name="svalue" type="text" size="15" />
&nbsp;
<input type="submit" name="Submit" value="查找" /></td>
  </tr>
  <tr>
    <td width="288" height="25" align="center" valign="middle" bgcolor="#F9FCFF">名称</td>
    <td width="333" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4">操作</span></td>
  </tr>
  <%
  lxxop lxop=new lxxop();
  String op=DateFormate.toGb((String)request.getParameter("op"));
  String svalue=DateFormate.toGb((String)request.getParameter("svalue"));
  ArrayList al=new ArrayList();
  if("search".equals(op)){
	  al=lxop.getLxx2(svalue); 
  }else{
	al=lxop.getLxx();
	}
 lxx lx=new lxx();
  for(int i=0;i<al.size();i++){
	  lx=(lxx)al.get(i);
	  
  %>
  <tr>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=lx.getLx() %></span></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><a href="lxxop.jsp?op=del&lx=<%=lx.getLx()%>">删除</a></span></td>
  </tr>
  
  <%
  }
  
  %>
</table>
<input name="op" type="hidden" value="search" />
</form>
</body>
</html>
