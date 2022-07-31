<%@ page import="com.example.cosviewmain.dao.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-07-31
  Time: 오후 7:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String nickname = request.getParameter("Nickname");
    MemberDAO dao = MemberDAO.getInstance();
    boolean result = dao.confirmNickName(nickname);

    if (result) {%>
<center>
    <br/> <br/>
    <h4>이미 사용중인 닉네임 입니다.</h4>
</center>
<%} else { %>
<center>
    <br/> <br/>
    <h4>입력하신 <%=nickname %>는 사용하실 수 있는 닉네임 입니다</h4>
</center>
<%
    }
%>
</body>
</html>
