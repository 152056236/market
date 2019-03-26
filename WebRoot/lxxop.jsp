<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<%
String op=DateFormate.toGb((String)request.getParameter("op"));
String lx;
 
lxxop lxop=new lxxop();
if("add".equals(op)){
     
	lx=DateFormate.toGb((String)request.getParameter("lx"));
	
	//lx=(String)request.getParameter("lx");
 
	lxop.add(lx);
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="lxxmanager.jsp";
	</script>
	
	<%
}else if("del".equals(op)){

	lx=DateFormate.toGb((String)request.getParameter("lx"));
 
	 
	 
	lxop.delete(lx);
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="lxxmanager.jsp";
	</script>
	<%}
 
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> </title>
</head>

<body>
</body>
</html>
