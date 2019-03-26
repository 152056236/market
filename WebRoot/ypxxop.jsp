<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<%
String op=DateFormate.toGb((String)request.getParameter("op"));
String id,mc,jx,gg,ph,dw,lsj,sl,cj;
 
ypxxop ypop=new ypxxop();
if("add".equals(op)){
   	id=DateFormate.getId();
	mc=DateFormate.toGb((String)request.getParameter("mc"));
    jx=DateFormate.toGb((String)request.getParameter("jx"));
	gg=DateFormate.toGb((String)request.getParameter("gg"));
    ph=DateFormate.toGb((String)request.getParameter("ph"));
	
	dw=DateFormate.toGb((String)request.getParameter("dw"));
	lsj=DateFormate.toGb((String)request.getParameter("lsj"));
    sl=DateFormate.toGb((String)request.getParameter("sl"));
    cj=DateFormate.toGb((String)request.getParameter("cj"));
	ypop.add(id,mc,jx,gg,ph,dw,lsj,sl,cj);
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="ypmanager.jsp";
	</script>
	
	<%
}
else if("mod".equals(op)){
 	id=DateFormate.toGb((String)request.getParameter("id"));
	mc=DateFormate.toGb((String)request.getParameter("mc"));
    jx=DateFormate.toGb((String)request.getParameter("jx"));
	gg=DateFormate.toGb((String)request.getParameter("gg"));
    ph=DateFormate.toGb((String)request.getParameter("ph"));
	
	dw=DateFormate.toGb((String)request.getParameter("dw"));
	lsj=DateFormate.toGb((String)request.getParameter("lsj"));
    sl=DateFormate.toGb((String)request.getParameter("sl"));
	 cj=DateFormate.toGb((String)request.getParameter("cj"));
    ypop.update(id,mc,jx,gg,ph,dw,lsj,sl,cj);
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="ypmanager.jsp";
	</script>
	
	<%
}else if("del".equals(op)){

	id=DateFormate.toGb((String)request.getParameter("id"));
 
	 
	 
	ypop.delete(id);
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="ypmanager.jsp";
	</script>
	<%
 
	
	}
 
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> </title>
</head>

<body>
</body>
</html>
