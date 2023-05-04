<%@page import="kapil.project.connection.DbCon"%>
<%@page import="kapil.project.dao.ProductDao"%>
<%@page import="kapil.project.dao.ProductsDao"%>
<%@page import="kapil.project.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>


<%
User auth1 = (User) request.getSession().getAttribute("auth1");
if (auth1 != null) {
    request.setAttribute("person", auth1);
}
ProductsDao pd1 = new ProductsDao(DbCon.getConnection());
List<Products> products1 =pd1.getAllProducts();

%>


<!DOCTYPE html>
<html>
<head>

<%@include file="/includes/header.jsp"%>
<title>E-Commerce Cart</title>
</head>
<body>

	<%@include file="/includes/navbar.jsp"%>

	<div class="container">
		<div class="card-header my-3">Mobiles</div>
		<div class="row">
			<%
			if (!products.isEmpty()) {
				for (Product p : products) {
			%>
			
			<div class="col-md-3 my-3">
				<div class="card w-100">
					<h1><img class="card-img-top" src="product-image/<%=p.getImage() %>"
						alt="Card image cap"></h1>
					<div class="card-body">
						<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="price">Price: &#8377; <%=p.getPrice() %></h6>
						<h6 class="category">Category: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a> <a
								class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			
			<%
			}
			} else {
			out.println("There is no proucts");
			}
			%>

		</div>
	</div>

	
	
	<%@include file="/includes/header.jsp"%>
	
	<div class="container">
		<div class="card-header my-3">Shoses</div>
		<div class="row">
			<%
			    if( !products1.isEmpty()) {
			    	for(Products p1:products1){
			    		out.println(p1.getCategory1());
			%>
			
			<div class="col-md-3 my-3">
				<div class="card w-100">
					<h1><img class="card-img-top" src="product-image1/<%=p1.getImage1() %>"
						alt="Card image cap"></h1>
					<div class="card-body">
						<h5 class="card-title"><%=p1.getName1() %></h5>
						<h6 class="price">Price: &#8377; <%=p1.getPrice1() %></h6>
						<h6 class="category">Category: <%=p1.getCategory1() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="add-to-cart?id=<%=p1.getId1()%>">Add to Cart</a> <a
								class="btn btn-primary" href="order-now?quantity=1&id=<%=p1.getId1()%>">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			
			<%
			}
			} else {
			out.println("There is no proucts");
			}
			%>

		</div>
	</div>

	<%@include file="/includes/footer.jsp"%>
</body>
</html>