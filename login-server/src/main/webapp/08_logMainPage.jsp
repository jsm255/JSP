<%@page import="user.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인이 된 페이지</title>
</head>
<body>
    <%
    UserDAO dao = UserDAO.getInstance();
    ArrayList<UserDTO> users = dao.getUsers();
    String userName = dao.getUserName();
    
//     java에서 세션값 설정하기
    session.setAttribute("log", UserDAO.log);
	
	// session.removeAttribute("log");
// 	response.sendRedirect(url);
    %>
    <h2><%=userName %>님 환영합니다.</h2>
    <form method="get" action="05_mainPage.jsp">
        <input type="submit" value="로그아웃">
    </form>
</body>
</html>