<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Entities.User" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html" %>
<html>
<body>
<h2>Hello World!</h2>
<%
    List<User> arr=new ArrayList<User>();
//    arr.add("One");
//    arr.add("Two");
//    arr.add("Three");
//    arr.add("Four");
    arr.add(new User("Tran Van Linh","123344"));
    arr.add(new User("Tran Van Linh 1","123344"));
    arr.add(new User("Tran Van Linh 2","123344"));
    arr.add(new User("Tran Van Linh 3","123344"));
    pageContext.setAttribute("user",arr);
    String str="addbc";
    pageContext.setAttribute("str",str);
%>

<table>
    <TH>Name</th>
    <TH>Id</th>


    <c:forEach items="${user}" var="current" varStatus="index">
        <tr>
            <td><c:out value="${index.current}" /><td>
            <td><c:out value="${current.userName}" /><td>
            <td><c:out value="${current.passWord}" /><td>
        </tr>
    </c:forEach>
</table>
<!---if--------------------------->
<br>
<c:if test="${str=='abc'}">
    <b>true</b>
</c:if>
<c:if test="${str!='abc'}">
    <b>false</b>
</c:if>
<!--choose-when--------------------------->
<br>
<c:choose>
    <c:when test="${str=='a'}">
        <b>ok a</b>
    </c:when>
    <c:when test="${str=='b'}">
        <b>ok b</b>
    </c:when>
    <c:otherwise>
        otherwise
    </c:otherwise>
</c:choose>
<%---------------c:set-----------------------------%>
<c:set var="set" scope="session" value="Hello c:set">

</c:set>
<%-----c:remove--%>
<br>
<%=pageContext.findAttribute("set")%>
<c:remove var="set" scope="session"/>
remove all <%=pageContext.findAttribute("set")%>
<%------------------------------------%>

<%--c:import-- co tac dung include duoc page khac ngoai webapp hien tai--%>

<%--<c:import url="https://linhtranitvnua.blogspot.com/"/>--%>
<%------------------------------%>


</body>
</html>
