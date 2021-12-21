<%@page import="user.UserDTO"%>
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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
        UserDAO dao = UserDAO.getInstance();
        UserDTO user = new UserDTO(id, pw);
        if(dao.loginUser(user)) {
        	%>
        	<form id="success" method="get" action="08_logMainPage.jsp"></form>
        	<script>
        	document.querySelector('#success').submit();
        	</script>
        	<%
        }
        else {
        	%>
        	<form id="fail" method="get" action="06_login.jsp"></form>
        	<script>
        	alert("id와 pw가 일치하지 않습니다!");
        	document.querySelector('#fail').submit();
        	</script>
        	<%
        }
        %>
</body>
</html>