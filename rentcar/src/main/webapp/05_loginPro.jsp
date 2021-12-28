<%@page import="user.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String before = "";
if(session.getAttribute("before") != null) {
	before = String.valueOf(session.getAttribute("before"));	// 이전 페이지가 있으면 변수에 넘겨주고
	session.removeAttribute("before");							// 퇴장
}

String id = request.getParameter("id");
String pw = request.getParameter("pw");

UserDAO uDao = UserDAO.getInstance();

ArrayList<UserDTO> users = uDao.getUsers();

if(uDao.login(id, pw)) {
	session.setAttribute("log", UserDAO.log);
	if(before.equals("")) response.sendRedirect("01_mainPage.jsp");
	else if(before.equals("myPage")) response.sendRedirect("03_myPage.jsp");
}
else {
	response.sendRedirect("04_login.jsp?action=loginFailed");
}
%>
</body>
</html>