<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<head>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
</head>

<t:general>


    <jsp:attribute name="title">dati registrazione</jsp:attribute>


    <jsp:attribute name="yield">
        <head>
         <div class="row">
             <div class="box">
                 <div class="col-lg-12">
        <h3>I tuoti dati</h3>
            <tr>
                <th><strong>Nome:</strong>
                 ${user.firstName} </th>

                <th><strong>Cognome: </strong>
                    ${user.lastName} </th>

                <th><strong> Nickname: </strong>
                    ${user.nickname}</th>

                <th><strong>EMail: </strong>
                    ${user.email}</th>

                <th><strong>Data di nascita: <em>
                ${user.birthDate}</th>

                <th>
                    <form action="/" method="get"><input type="submit" class="btn btn-danger btn-mini" value="Home"/></form>
                </th>
            </tr>
        </div>
        </div>
        </div>
        </head>

    </jsp:attribute>

</t:general>
