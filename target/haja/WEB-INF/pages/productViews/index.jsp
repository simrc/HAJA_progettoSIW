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

<head>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
</head>

<t:general>

  <jsp:attribute name="title">Catalogo Prodotti</jsp:attribute>
  <jsp:attribute name="yield">
     <head>
         <div class="row">
             <div class="box">
                 <div class="col-lg-12">
        <c:if test="${!empty products}">
          <h3>Catalogo Prodotti</h3>
          <table>
            <thead>
            <tr>
              <th>Nome</th>
              <th>Descrizione Prodotto</th>
              <th>Prezzo</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
              <tr>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>&euro; ${product.price}</td>
                <td>
                  <form action="/administrator/product/delete/${product.id}" method="post"><input type="submit" value="Rimuovi"/></form>
                </td>
              </tr>
            </c:forEach>
            </tbody>
          </table>
        </c:if>
     </div>
    </div>
    </div>
    </head>
    </jsp:attribute>

</t:general>
