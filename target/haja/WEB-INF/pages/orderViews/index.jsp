<%--
  Created by IntelliJ IDEA.
  User: alessio
  Date: 04/06/15
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ORDINI</title>
</head>
<body>

    <c:if test="${!empty orders}">
      <h3>Ordini</h3>
      <table class="table table-bordered table-striped"> <!--intabellamento-->
        <thead>
        <tr>
          <th>ID ordine</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${orders}" var="order">
          <tr>
            <td>${order.id} </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </c:if>
</body>
</html>
