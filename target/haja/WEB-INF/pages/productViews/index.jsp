<%--
  Created by IntelliJ IDEA.
  User: alessio
  Date: 19/05/15
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:layout>


  <jsp:attribute name="title">Catalogo Prodotti</jsp:attribute>


    <jsp:attribute name="yeld">

        <c:if test="${!empty products}">
          <h3>Catalogo Prodotti</h3>
          <table>
            <thead>
            <tr>
              <th>Id</th>
              <th>Nome</th>
              <th>Descrizione Prodotto</th>
              <th>Prezzo</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
              <tr>
                <td>${product.id}</td>
                <td>${product.description}</td>
                <td>&euro; ${product.price}</td>
                <td>
                  <form action="/product/delete/${product.id}" method="post"><input type="submit" value="Delete"/></form>
                </td>
              </tr>
            </c:forEach>
            </tbody>
          </table>
        </c:if>

    </jsp:attribute>

</t:layout>