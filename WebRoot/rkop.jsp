<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<%
String op=DateFormate.toGb((String)request.getParameter("op"));
String ypid,id,dj,sl,je,rq,lx;
 
rkxxop rkop=new rkxxop();
if("add".equals(op)){
   	id=DateFormate.getId();
	ypid=DateFormate.toGb((String)request.getParameter("ypid"));
    dj=DateFormate.toGb((String)request.getParameter("dj"));
	sl=DateFormate.toGb((String)request.getParameter("sl"));
    je=DateFormate.toGb((String)request.getParameter("je"));
	lx=DateFormate.toGb((String)request.getParameter("lx"));
    rq=DateFormate.getDateTime();
 
	rkop.add(id,lx,ypid,sl,dj,je,rq);
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="rkmanager.jsp";
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
