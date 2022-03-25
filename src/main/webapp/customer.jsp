<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@page import="model.Customer" %>
<%--
  Created by IntelliJ IDEA.
  User: kieuanh
  Date: 25/03/2022
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    List<Customer> customerList = new ArrayList<>();
%>
<%
    customerList.add(new Customer("Thiet", "25/12/1998", "Ha Noi"));
    customerList.add(new Customer("Huyen", "20/2/1998", "Hai Phong"));
    customerList.add(new Customer("Cong chua 34", "18/1/1999", "Hai Duong"));
    request.setAttribute("dskh", customerList);
%>
<table>
    <c:if test="${dskh.size()>=3}">
        <p>Co nhieu khach hang can cham soc</p>
    </c:if>
    <tr>
        <td>Name</td>
        <td>Date of birth</td>
        <td>Address</td>
    </tr>
    <c:forEach var="customer" items="${dskh}" >
        <tr>
            <td>${customer.getName()}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.address}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
