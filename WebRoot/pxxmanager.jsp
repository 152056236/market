<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金盆超市管理系统--员工信息管理</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
.STYLE4 {font-size: 14px}
.STYLE5 {color: #FF0000}
.STYLE6 {
	font-size: 12px;
	color: #FFFFFF;
}
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
<form name="zgform" action="pxxmanager.jsp" method="post" onsubmit="javascript:return check();">
  <table width="825" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#00cccc" style="font-size:12px">
    <!--DWLayoutTable-->
    <tr>
      <td height="25" colspan="6" align="left" valign="middle" bgcolor="#00cccc"><span class="STYLE1"> <span class="STYLE5">&nbsp;员工信息管理{<span class="STYLE6" style="cursor:hand;"><a href="addpxx.jsp">新增员工信息</a></span>}&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </td>
    </tr>
    <tr>
      <td width="121" align="center" valign="middle" bgcolor="#F9FCFF">员工编号</td>
      <td width="120" align="center" valign="middle" bgcolor="#F9FCFF">真实姓名</td>
      <td width="123" height="25" align="center" valign="middle" bgcolor="#F9FCFF">性别</td>
      <td width="121" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">身份证</td>
      <td width="149" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">电话</td>
      <td width="74" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4">操作</span></td>
    </tr>
    <%
  pxxop pxop=new pxxop();
  String op=DateFormate.toGb((String)request.getParameter("op"));
  String svalue=DateFormate.toGb((String)request.getParameter("svalue"));
  ArrayList al=new ArrayList();
  if("search".equals(op)){
	  al=pxop.getPxx2(svalue); 
  }else{
	al=pxop.getPxx();
	}
 pxx px=new pxx();
  for(int i=0;i<al.size();i++){
	  px=(pxx)al.get(i);
	  
  %>
    <tr>
      <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=px.getYid() %></span></td>
      <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=px.getName() %></span></td>
      <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=px.getSex() %></span></td>
      <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=px.getSfz() %></td>
      <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=px.getTel() %></td>
      <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><a href="pxxop.jsp?op=del&yid=<%=px.getYid()%>">删除</a> <a href="disppxx.jsp?yid=<%=px.getYid()%>"> </a></span></td>
    </tr>
    <%
  }
  
  %>
  </table>
  <input name="op" type="hidden" value="search" />
</form>
</body>
</html>
