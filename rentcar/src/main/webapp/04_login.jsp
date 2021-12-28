<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<%
String action = String.valueOf(request.getParameter("action"));
if(action.equals("loginFailed")) {
	%>
	<script>alert("아이디와 비밀번호가 일치하지 않습니다.")</script>
	<%
}
%>
	<div>
        <form method="post" action="05_loginPro.jsp">
            <input type="text" name="id" required>
            <input type="password" name="pw" required>
            <input type="submit" value="로그인">
            <input type="button" onclick="location.href='06_join.jsp'" value="회원 가입">
        </form>
    </div>
</body>
</html>