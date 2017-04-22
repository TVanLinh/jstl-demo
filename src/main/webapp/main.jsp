<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: linhtran
  Date: 22/04/2017
  Time: 08:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%-------------------------------------%>
    <jsp:include page="include.jsp">
        <jsp:param name="height" value="480px"/>
        <jsp:param name="width" value="500px"/>
        <jsp:param name="title" value="Include jsp"/>
    </jsp:include>
<%--=========================================--%>
<c:import url="include.jsp">
    <c:param name="height" value="300px"/>
    <c:param name="width" value="300px"/>
    <c:param name="title" value="C:import jslt"/>

</c:import>
</body>
</html>
