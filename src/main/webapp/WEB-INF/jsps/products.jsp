<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "inc/header.jsp" %>
	<!--HEADER-->
	<header class='container'>
		<h1>Products</h1>
	</header>
	<!--MAIN-->
	<main class='container'>
		<div class='row'>

			<!-- loop over and print our customers -->
			<c:forEach var="product" items="${products}">

				<!-- construct an "delete" link with customer id -->
				<c:url var="productLink" value="/product">
					<c:param name="id" value="${product.id}" />
				</c:url>

				<div class='col-sm-4 col-lg-4 col-md-4'>
					<div class='thumbnail'>
						<img src='img/pc1.jpg' alt=''>
						<div class='caption'>
							<h4 class='pull-right'>$${product.price}</h4>
							<h4><a href='${productLink}'>${product.name}</a></h4>
							<p>${product.description}</p>
							<div class="text-center">
								<button id="product${product.id}" class="btn btn-success add-to-cart">Add To Cart</button>
							</div>
						</div>
						<div class='ratings'>
							<p class='pull-right'>6 reviews</p>
							<p>
								<span class='glyphicon glyphicon-star'></span>
								<span class='glyphicon glyphicon-star'></span>
								<span class='glyphicon glyphicon-star'></span>
								<span class='glyphicon glyphicon-star'></span>
								<span class='glyphicon glyphicon-star'></span>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</main>
	<!--FOOTER-->
<%@ include file = "inc/footer.jsp" %>