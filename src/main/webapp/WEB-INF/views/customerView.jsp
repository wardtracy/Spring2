<%--
  Created by IntelliJ IDEA.
  User: Grand Circus Student
  Date: 8/14/2017
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="/resources/style.css" rel="stylesheet">
<html>
<head>
    <title>Title</title>
</head>
<body>

<table border="1">

    <tr>
        <th>name</th>
        <th>description</th>
    </tr>
    <c:forEach items="${cList}" var="item">

        <tr>
            <td>
                ${item.name}
            </td>

            <td>
                ${item.description}
            </td>
        </tr>

    </c:forEach>
</table>
</body>
</html>
