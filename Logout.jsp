<html>
<title>logout</title>

<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<%
session.removeAttribute("name");
session.invalidate();
response.sendRedirect("index.jsp");

%>

</html>