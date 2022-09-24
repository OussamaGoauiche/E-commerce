<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="com.package1.e_commerce.model.User" %>
    <% 
	User auth = (User) request.getSession().getAttribute("auth");
	if(auth!=null)
		request.setAttribute("auth",auth);
%>
<!DOCTYPE html>
<html>
<head>
<title>cart</title>
<%@ include file="includes/head.jsp" %>
</head>
<body>
<%@ include file="includes/navbar.jsp" %>
<%@ include file="includes/footer.jsp" %>
</body>
</html>