<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:general>


    <jsp:attribute name="title">Catalogo Prodotti di Haja</jsp:attribute>
    <jsp:attribute name="yield">

        <form:form method="post" action="/product/add" commandName="product">

            <form:label path="name">Nome:</form:label>
            <form:input path="name"/>

            <form:label path="description">Descrizione:</form:label>
            <form:input path="description"/>

            <form:label path="price">Prezzo:</form:label>
            <form:input path="price"/>

            <input type="submit" value="inserisci">

        </form:form>

    </jsp:attribute>

</t:general>