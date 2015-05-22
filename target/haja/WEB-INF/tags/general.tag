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
    <ul>
        <li><a href="/">Welcome!</a></li>
        <li><a href="/administrator/supplier">Fornitori</a></li>
        <li><a href="/administrator/user">Utenti</a></li>
        <li><a href="/administrator/product">I nostri prodotti</a></li>
    </ul>
    <jsp:invoke fragment="yield"/>
    <jsp:invoke fragment="footer"/>
</body>
</html>