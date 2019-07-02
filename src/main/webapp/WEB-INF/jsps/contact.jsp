<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String pageTitle = "Contact Ryan Teddy";
String section = "contact"; %>
<%@ include file = "inc/header.jsp" %>

	<div class="section page">
		<div class="wrapper">

			<h1>Contact</h1>

			<p>I&rsquo;d Love To Hear From You! Complete the form to send me an email.</p>
			<p>${warn}</p>
			<form:form action="contactForm" method="post">
				<table>
					<tr>
						<th>
							<label for="name">Name</label>
						</th>
						<td>
							<input type="text" name="name" id="name" />
						</td>
					</tr>

					<tr>
						<th>
							<label for="email">Email</label>
						</th>
						<td>
							<input type="text" name="email" id="email" />
						</td>
					</tr>

					<tr>
						<th>
							<label for="message">Message</label>
						</th>
						<td>
							<textarea name="message" id="message" ></textarea>
						</td>
					</tr>
				</table>
				
				<input type="submit" value="Send"/>

			</form:form>

		</div>

	</div>

<%@ include file = "inc/footer.jsp" %>
