<%@ page import="com.example.cosviewmain.dao.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-07-31
  Time: 오후 6:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String id = request.getParameter("id");
    MemberDAO dao = MemberDAO.getInstance();
    boolean result = dao.confirmId(id);

    if (result) {%>
<center>
    <br/> <br/>
    <h4>이미 사용중인 ID 입니다.</h4>
</center>
<%} else { %>
<center>
    <br/> <br/>
    <h4>입력하신 <%=id %>는 사용하실 수 있는 ID입니다</h4>
</center>
<%
    }
%>

</body>
</html>
