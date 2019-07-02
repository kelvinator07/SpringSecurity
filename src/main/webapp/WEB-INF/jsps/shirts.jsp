<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%
	String pageTitle = "Ryan Teddy's Full Catalog of Shirts";
	String section = "shirts"; %>
<%@ include file = "inc/header.jsp" %>

		<div class="section shirts page">

			<div class="wrapper">

				<h1>Ryan Teddy&rsquo;s Full Catalog of Shirts</h1>

				<ul class="products">

				<!-- loop over and print our shirts -->
				<c:forEach var="product" items="${products}">
					<li><a href="shirt?id=${product.id}"><description src="${product.description}" alt="${product.name}"/><p>View Details</p></a></li></c:forEach>
				</ul>
			</div>
		</div>

<%@ include file = "inc/footer.jsp" %>
