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
	String before = "";
	if(session.getAttribute("before") != null) {
		before = String.valueOf(session.getAttribute("before"));	// 이전 페이지가 있으면 변수에 넘겨주고
		session.removeAttribute("before");							// 퇴장
	}
%>

	<div>
        <form method="post" action="05_loginPro.jsp">
            <input type="text" name="id" required>
            <input type="password" name="pw" required>
            <input type="submit" value="로그인">
            <input type="button" onclick="location.href='06_join.jsp'">
        </form>
    </div>
</body>
</html>