<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.package1.e_commerce.connection.Dbconn"%>
<%@ page import="com.package1.e_commerce.model.User"%>
<%@ page import=" com.package1.e_commerce.Dao.ProductDao"%>
<%@ page import="java.util.*"%>
<%@ page import="com.package1.e_commerce.model.Product"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null)
	request.setAttribute("auth", auth);
ProductDao pd= new ProductDao(Dbconn.getConnection());
List<Product> products = pd.getAllProduct();
%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to shopping cart</title>
<%@ include file="includes/head.jsp"%>
</head>
<body>
	<%@ include file="includes/navbar.jsp"%>
	<div class="container">
		<div class="card-header my-3">All Product</div>
		<div class="row">
		<% if(!products.isEmpty()){
			for(Product p : products){
				
			%>
			<div class="col-md-m">
				<div class="card w-100" style="width: 18rem;">
					<img src="produit-images/tt.png" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title"> Name :<%= p.getName() %></h5>
						<h6 class="price">Price :<%= p.getPrice() %></h6>
						<h6 class="category">Category:<%= p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a href="#" class="btn btn-primary">Add to Cart</a>
							<a href="#" class="btn btn-primary">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			<%}
		} %>
		</div>
	</div>
	<%@ include file="includes/footer.jsp"%>
</body>
</html>