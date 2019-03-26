<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<%
String op=DateFormate.toGb((String)request.getParameter("op"));
String ypid,id,dj,sl,je,rq,lx,pid,pname;
 
ckxxop ckop=new ckxxop();
if("add".equals(op)){
   	id=DateFormate.getId();
	ypid=DateFormate.toGb((String)request.getParameter("ypid"));
    dj=DateFormate.toGb((String)request.getParameter("dj"));
	sl=DateFormate.toGb((String)request.getParameter("sl"));
    je=DateFormate.toGb((String)request.getParameter("je"));
	lx=DateFormate.toGb((String)request.getParameter("lx"));
    rq=DateFormate.getDateTime();
    pid=(String)session.getAttribute("s_username");
	
	pxxop px=new pxxop();
	pname=px.getName(pid);
	ckop.add(id,pname,ypid,sl,dj,je,rq);
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="addck.jsp";
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
