<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ page import="mypackage.*,java.util.*" %>
<%
String op=DateFormate.toGb((String)request.getParameter("op"));
String yid,name,password,sex,age,addr,tel,sfz,email,jj,username;
 
pxxop pxop=new pxxop();
if("add".equals(op)){
   	yid=DateFormate.toGb((String)request.getParameter("yid"));
	name=DateFormate.toGb((String)request.getParameter("name"));
    password=DateFormate.toGb((String)request.getParameter("password"));
 
    sex=DateFormate.toGb((String)request.getParameter("sex"));
	age=DateFormate.toGb((String)request.getParameter("age"));
    addr=DateFormate.toGb((String)request.getParameter("addr"));
	
	tel=DateFormate.toGb((String)request.getParameter("tel"));
	sfz=DateFormate.toGb((String)request.getParameter("sfz"));
    email=DateFormate.toGb((String)request.getParameter("email"));
 
	pxop.add(yid,name,password,sex,age,addr,tel,sfz,email,"0");
	%>
	<script language="javascript">
	alert("用户注册成功");
	document.location.href="pxxmanager.jsp";
	</script>
	
	<%
}
else if("mod".equals(op)){
 	yid=DateFormate.toGb((String)request.getParameter("yid"));
	name=DateFormate.toGb((String)request.getParameter("name"));
    password=DateFormate.toGb((String)request.getParameter("password"));
 
    sex=DateFormate.toGb((String)request.getParameter("sex"));
	age=DateFormate.toGb((String)request.getParameter("age"));
    addr=DateFormate.toGb((String)request.getParameter("addr"));
	
	tel=DateFormate.toGb((String)request.getParameter("tel"));
	sfz=DateFormate.toGb((String)request.getParameter("sfz"));
    email=DateFormate.toGb((String)request.getParameter("email"));
	jj=DateFormate.toGb((String)request.getParameter("jj"));
	pxop.update(yid,name,password,sex,age,addr,tel,sfz,email,jj);
	%>
	<script language="javascript">
	alert("个人信息修改成功");
	document.location.href="modpxx.jsp";
	</script>
	
	<%
}else if("del".equals(op)){

	yid=DateFormate.toGb((String)request.getParameter("yid"));
 
	 
	 
	pxop.delete(yid);
	%>
	<script language="javascript">
	alert("操作成功");
	document.location.href="pxxmanager.jsp";
	</script>
	<%
 }else if("login".equals(op)){

	username=DateFormate.toGb((String)request.getParameter("username"));
    password=DateFormate.toGb((String)request.getParameter("password"));
 
    LoginManager lm=new LoginManager();
    if(!lm.testUser(username,password,"2")){
    %>
      <script language="javascript">
	      alert("用户名或密码错误，或者没有这个用户的注册资料！");
	      document.location.href="index.jsp";
       </script>
<%	
}else{
    session.setAttribute("s_usertype","2");
	session.setAttribute("s_username",username);
	session.setAttribute("s_userpasword",password);
     %>
      <script language="javascript">
	      alert("登陆成功！");
	        document.location.href="index.jsp";
       </script>
<%	
	 
	 
}
	
	
	
	
	}
 
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> </title>
</head>

<body>
</body>
</html>
