<%@ page contentType="text/html; charset=utf-8" language="java" pageEncoding="utf-8"%>
<%
	String left="";
//  if("2".equals(session.getAttribute("s_usertype"))){
//		left="left_admin.jsp";
//	}else if("1".equals(session.getAttribute("s_usertype"))){
		left="left.jsp";
//	}else{
//		out.println("非法登陆！");
//		return;
//	}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>金盆超市管理系统</title>
</head>

<frameset rows="*" cols="140,*" framespacing="0" frameborder="no" border="0">
  <frame src="<%=left%>" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" />
  <frame src="main.jsp" name="mainFrame" id="mainFrame" title="mainFrame" />
</frameset>
<noframes><body>
</body>
</noframes