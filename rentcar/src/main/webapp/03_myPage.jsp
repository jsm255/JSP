<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
	<%
	if(UserDAO.log == -1) {	// 로그인이 되어있지 않으면 바로 로그인 페이지로 리다이렉트
		session.setAttribute("before", "myPage");	// 이전 페이지 기억
		response.sendRedirect("04_login.jsp");
	}
	%>
</body>
</html>