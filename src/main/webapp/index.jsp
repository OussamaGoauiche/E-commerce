<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.package1.e_commerce.connection.Dbconn" %>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to shopping cart</title>
<%@ include file="includes/head.jsp" %>
</head>
<body>
<%= Dbconn.getConnection() %>
<%@ include file="includes/navbar.jsp" %>
<%@ include file="includes/footer.jsp" %>
</body>
</html>