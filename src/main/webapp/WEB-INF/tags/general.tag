<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
<%@attribute name="title" fragment="true" required="true" %>
<%@attribute name="head" fragment="true" %>
<%@attribute name="yield" fragment="true" required="true" %>
<%@attribute name="footer" fragment="true" %>

<html>
<head>

    <meta charset="utf-8">
    <title><jsp:invoke fragment="title"/></title>

    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <jsp:invoke fragment="head"/>
</head>

<body>
    <nav id="main-nav">
        <ul>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <li><a href="/">HAJA</a></li>
                <li><a href="/administrator/supplier">Fornitori</a></li>
                <li><a href="/administrator/user">Utenti</a></li>
                <li><a href="/administrator/orders">Ordini </a></li>
                <li><a href="/administrator/product">Prodotti</a></li>
            </sec:authorize>
        </ul>
    </nav>


    <nav id="seconday-nav">
        <ul>
            <li><a title="registrati" href="/signup">registrati</a></li>
            <sec:authorize access="isAnonymous()">
                <li><a title="login" href="/login">login</a></li>
            </sec:authorize>

            <sec:authorize access="isAuthenticated()">
                <li><a href="/j_spring_security_logout">logout</a> </li>
            </sec:authorize>
        </ul>
    </nav>

    <jsp:invoke fragment="yield"/>
    <jsp:invoke fragment="footer"/>
</body>
</html>