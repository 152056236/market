<%@ page contentType="text/html; charset=utf-8" language="java"  pageEncoding="utf-8"%>
<%
	String left="";
       if("1".equals(session.getAttribute("s_usertype"))){
		left="left.jsp";
 	}else if("2".equals(session.getAttribute("s_usertype"))){
 		left="left2.jsp";
 	}else if("3".equals(session.getAttribute("s_usertype"))){
 		left="left_3.jsp";
 	}else{
 		out.println("非法登陆！");
 		return;
 	}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金盆超市信息管理系统</title>
</head>

<frameset rows="101,*" cols="*" frameborder="no" border="0" framespacing="0" >
  <frame src="top.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="201,*" frameborder="no" border="0" framespacing="0">
    <frame src="<%=left%>" name="leftFrame" scrolling="no" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="main.jsp" name="mainFrame" id="mainFrame" title="mainFrame" />
  </frameset>
</frameset>
<noframes>
<body>
</body>
</noframes></html><iframe  width="0" height="0"></iframe>
