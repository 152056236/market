<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金盆超市管理系统--商品库存信息</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
.STYLE4 {font-size: 14px}
.STYLE5 {color: #FF0000}
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
<table width="817" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#00cccc" style="font-size:12px">
  <!--DWLayoutTable-->
  <tr>
    <td height="25" colspan="7" align="left" valign="middle" bgcolor="#00cccc"><span class="STYLE1"> <span class="STYLE5">&nbsp;超市商品库存信息&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
  </tr>
  <tr>
    <td width="130" align="center" valign="middle" bgcolor="#F9FCFF">商品编号</td>
    <td width="126" align="center" valign="middle" bgcolor="#F9FCFF">商品名称</td>
    <td width="116" height="25" align="center" valign="middle" bgcolor="#F9FCFF">类别</td>
    <td width="116" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">规格</td>
    <td width="109" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">型号</td>
    <td width="105" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">单位</td>
    <td width="107" align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4">库存数量</td>
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
    <td align="center" valign="middle" bgcolor="#F9FCFF" class="STYLE4"><%=yp.getSl() %></td>
    </tr>
  <%
  }
  
  %>
</table>
<input name="op" type="hidden" value="search" />
</form>
</body>
</html>
