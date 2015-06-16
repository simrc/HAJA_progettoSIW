<%--
  Created by IntelliJ IDEA.
  User: alessio
  Date: 22/05/15
  Time: 09:25
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<head>
  <link href="../../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>

<t:general>

  <jsp:attribute name="title">Prodotti di Haja</jsp:attribute>
    <jsp:attribute name="yield">
      <sec:authorize access="hasRole('ROLE_ADMIN')">
      <head>
         <div class="row">
             <div class="box">
                 <div class="col-lg-12">

          <form:form method="post" action="/administrator/product/add" commandName="product">

          <form:label path="name">Nome:</form:label>
          <form:input path="name"/>

          <form:label path="description">Descrizione:</form:label>
          <form:input path="description"/>

          <form:label path="price">Prezzo:</form:label>
          <form:input path="price"/>

          <form:label path="quantity">Quantit&#224:</form:label>
          <form:input path="quantity"/>



          <input type="submit" value="inserisci">

        </form:form>
                 </div>
             </div>
         </div>
      </head>
      </sec:authorize>
      <div class="row">
      <div class="box">
      <div class="col-lg-12">
    <c:if test="${!empty products}">


      <h3>Catalogo Prodotti</h3>
      <table>
        <thead>
        <tr>
          <th>Nome</th>
          <th>&nbsp&nbspDescrizione prodotto&nbsp</th>
          <th>&nbspPrezzo&nbsp&nbsp</th>
          <th>&nbspDisponibilit&agrave</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${products}" var="product">
          <tr>
            <td>${product.name}&nbsp&nbsp</td>
            <td>&nbsp&nbsp${product.description}&nbsp&nbsp</td>
            <td>&nbsp&nbsp&euro; ${product.price}&nbsp&nbsp</td>
            <td>&nbsp&nbsp${product.quantity}</td>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
            <td>
              <form action="/administrator/product/delete/${product.id}" method="post"><input type="submit" value="Rimuovi"/></form>
            </td>
            </sec:authorize>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </c:if>
   </div>
      </div>
      </div>


    </jsp:attribute>

</t:general>