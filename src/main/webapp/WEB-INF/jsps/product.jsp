<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
	String pageTitle = "${product.name}";
	String section = "shirts"; %>
<%@ include file = "inc/header.jsp" %>

		<!--MAIN-->
		<main class='container'>

				<div class="row">
					<div class="breadcrumb"><a href="shirts">Category</a> &gt; ${product.name} </div>

					<div class='col-sm-4 col-lg-4 col-md-4'>
						<div class='thumbnail'>
							<img src='img/pc1.jpg' alt=''>
							<div class='caption'>
								<h4 class='pull-right'>$${product.price}</h4>
								<h4><a href='#'>${product.name}</a></h4>
								<p>${product.description}</p>
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

					<div class='col-sm-4 col-lg-4 col-md-4'>

						<h1><span class="price"> $ ${product.price} </span> ${product.name} </h1>

						<input type="submit" value="Add to Cart" name="submit">

						<br/>
						<br/>

						<p class="note-designer">* All products comes with a 2 Year Guaranty by Shawpify.</p>

					</div>




				</div>

		</main>

<%@ include file = "inc/footer.jsp" %>