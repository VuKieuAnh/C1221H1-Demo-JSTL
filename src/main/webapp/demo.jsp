<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: kieuanh
  Date: 25/03/2022
  Time: 09:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String, String> tudien = new HashMap<>();
%>

<%
    tudien.put("hello", "Xin chao");
    tudien.put("cat", "meo");
    tudien.put("ny duc 2", "bao hong");
    tudien.put("ny duc 1", "cong chua 34");

    String search = request.getParameter("search");
    String result = tudien.get(search);
    if (result != null){
        out.println(result);
    }
    else {
        out.println("Khong tim thay");
    }
%>
</body>
</html>
