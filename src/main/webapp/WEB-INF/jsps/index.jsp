<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<body>

<h1>Welcome to Spring Security</h1>

<br/>

<p>
    User: <security:authentication property="principal.username"/>
    <br/>
    Roles: <security:authentication property="principal.authorities"/>
</p>

<br/>
<hr/>

    <security:authorize access="hasRole('MANAGER')">

        <!-- Add a link to point to /leaders ... this is for the managers -->

        <p>
            <a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
            (Only for Manager peeps)
        </p>

    </security:authorize>


    <security:authorize access="hasRole('ADMIN')">

        <!-- Add a link to point to /systems ... this is for the admins -->

        <p>
            <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
            (Only for Admin peeps)
        </p>

    </security:authorize>


<!-- Logout Form -->
<form:form action="${pageContext.request.contextPath}/logout" method="POST"
           class="form-horizontal">

    <input type="submit" value="Log Out"/>

</form:form>
</body>
</html>