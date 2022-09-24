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
<title>login</title>
<%@ include file="includes/head.jsp"%>
</head>
<body>
<%@ include file="includes/navbar.jsp" %>
	<div class="container">
		<div class="card w-50 mx-auto my-50">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="User_login" method="post">
					<div class="form-group">
						<label>Email</label> <input type="email" class="form-control"
							name="login-mail" placeholder="Entre Your Email" required>
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" name="login-password" placeholder="******"
							required>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="includes/footer.jsp"%>
</body>
</html>