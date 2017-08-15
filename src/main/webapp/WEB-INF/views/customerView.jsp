<%--
  Created by IntelliJ IDEA.
  User: Grand Circus Student
  Date: 8/14/2017
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table border="1">

    <tr>
        <th>CustomerID</th>
        <th>CompanyName</th>
    </tr>
    <c:forEach items="${cList}" var="item">

        <tr>
            <td>
                ${item.customerID}
            </td>

            <td>
                ${item.companyName}
            </td>
        </tr>

    </c:forEach>
</table>
</body>
</html>
