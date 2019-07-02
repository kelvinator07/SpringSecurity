<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String pageTitle = "${product.name}";
	String section = "shirts"; %>
<%@ include file = "inc/header.jsp" %>

<main>
	<!--HEADER-->
	<header>
		<div class='container'>
			<h1 align="center">Your Cart </h1>
			<br/>
		</div>
	</header>

		<div class="container-fluid">

			<div class="container">

				<!--  add our html table here -->
				<table class="table table-striped">
					<tr>
						<th>Product Name</th>
						<th>Product Price</th>
						<th>Quantity</th>
						<th>Total Price</th>
						<th> </th>
					</tr>

					<!-- loop over and print our customers -->
					<c:forEach var="tempCustomer" items="#">

						<tr>
							<td> Golf Balls </td>
							<td>  $49.99 </td>
							<td> 2 </td>
							<td> $89.99 </td>
							<td>
								<form method="post" action="">
								<input type="button" class="btn btn-danger" value="Remove From Cart"
									   onclick="window.location.href='removeFromCart'; return false " />
								</form>
							</td>
						</tr>

						<tr>
							<td> Golf Balls </td>
							<td>  $49.99 </td>
							<td> 2 </td>
							<td> $89.99 </td>
							<td>
								<form method="post" action="">
									<input type="button" class="btn btn-danger" value="Remove From Cart"
									   onclick="window.location.href='removeFromCart'; return false " />
								</form>
							</td>
						</tr>

					</c:forEach>
				</table>


			</div>


			<div class='row'>
				<div class="col-md-4">

				</div>
				<div class="col-md-4 well text-center">
					<p>Total (2 Items): <strong> $99.99 </strong> </p>
					<form action="" method="post">
					<input type="button" class="btn btn-primary" value="Proceed To Checkout"
					   onclick="window.location.href='removeFromCart'; return false " />
					</form>
					<br/>
				</div>
				<div class="col-md-4">

				</div>
			</div>


		</div>

</main>

<%@ include file = "inc/footer.jsp" %>