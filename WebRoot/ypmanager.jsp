<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金盆超市管理系统--商品信息</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
.STYLE4 {font-size: 14px}
.STYLE6 {color: #FF0000}
.STYLE7 {font-size: 12px}
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
<table width="972" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#00cccc" style="font-size:12px">
  <!--DWLayoutTable-->
    <tr bgcolor="#00CCCC"> 
      <td height="25" colspan="9" align="left" valign="middle"><span class="STYLE1"> 
        &nbsp;<span class="STYLE6">商品基本信息管理&nbsp;</span>[<span class="STYLE7" style="cursor:hand;"><a href="addypxx.jsp">新增商品信息</a></span>]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </span></td>
  </tr>
  <tr>
    <td width="117" align="center" valign="middle" bgcolor="#F9FCFF">商品编号</td>
    <td width="114" align="center" valign="middle" bgcolor="#F9FCFF">名称</td>
    <td width="109" height="25" align="center" valign="middle" bgcolor="#F9FCFF">类别</td>
    <td width="109" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">规格</td>
    <td width="105" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">型号</td>
    <td width="105" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">单位</td>
    <td width="112" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">零售价</td>
    <td width="99" align="center" valign="middle" bgcolor="#F9FCFF">生产厂家</td>
    <td width="63" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4">操作</span></td>
  </tr>
  <%
  ypxxop ypop=new ypxxop();
  String op=DateFormate.toGb((String)request.getParameter("op"));
  String svalue=DateFormate.toGb((String)request.getParameter("svalue"));
  ArrayList al=new ArrayList();
  if("search".equals(op)){
	  al=ypop.getypxxbyid(svalue); 
  }else{
	al=ypop.getypxxbyall();
	}
 ypxx yp=new ypxx();
  for(int i=0;i<al.size();i++){
	  yp=(ypxx)al.get(i);
	  
  %>
  <tr>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=yp.getId() %></span></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=yp.getMc() %></span></td>
    <td height="25" align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=yp.getJx() %></span></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=yp.getGg() %></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=yp.getPh() %></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=yp.getDw() %></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=yp.getLsj() %></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><%=yp.getCj() %></span></td>
    <td align="center" valign="middle" bgcolor="#F9FCFF"><span class="STYLE4"><a href="ypxxop.jsp?op=del&id=<%=yp.getId()%>">删除</a> <a href="modypxx.jsp?&id=<%=yp.getId()%>">修改 </a> </span></td>
  </tr>
  <%
  }
  
  %>
</table>
<input name="op" type="hidden" value="search" />
</form>
</body>
</html>
