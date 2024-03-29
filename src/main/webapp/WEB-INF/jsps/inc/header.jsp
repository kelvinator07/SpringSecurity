<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
	<meta http-equiv='X-UA-Compatible' content='IE=edge'>
	<meta name='viewport' content='width=device-width, initial-scale=1'>
	<title>Shawpify</title>
	<!--CSS-->
	<!--Bootstrap-->
	<link rel='stylesheet' href='css/bootstrap.min.css'/>
	<!--Optional Bootstrap Theme-->

	<!--FontAwesome-->
	<link rel='stylesheet' href='css/font-awesome.min.css'>

	<!--Custom CSS-->
	<link rel='stylesheet' href='css/style.css'>
</head>
<body>
<nav class='navbar navbar-inverse navbar-fixed-top'>
	<div class='container-fluid'>
		<header class='navbar-header'>
			<button type='button' class='navbar-toggle' data-toggle='collapse' data-target='#myNavbar'>
				<span class='icon-bar'></span>
				<span class='icon-bar'></span>
				<span class='icon-bar'></span>
			</button>
			<a class='navbar-brand' href='shawpify'>Shawpify Home</a>
		</header>
		<div class='collapse navbar-collapse' id='myNavbar'>
			<ul class='nav navbar-nav'>
				<li><a href='products'>Products</a></li>
				<li><a href='#'>Deals</a></li>
			</ul>
			<ul class='nav navbar-nav navbar-right'>
				<%
						if(false){ %>
							<li><a href='signout'><span class='glyphicon glyphicon-user'></span>Sign Out</a></li>
				<%}
				else{%>
				<li><a href='signin'><span class='glyphicon glyphicon-user'></span>Sign In</a></li>
				<%} %>
				<li><a href='cart'><span class='glyphicon glyphicon-shopping-cart'></span>Cart</a></li>
				<li>
					<form class='navbar-form' action='#' method='POST'>
						<input type='text' class='form-control' placeholder='Search for a Product'>
						<button type='submit' class='btn btn-primary'><span class='glyphicon glyphicon-search'></span></button>
					</form>
				</li>
			</ul>
		</div>
	</div>
</nav>