<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 권한을 위한 패스워드 입력</title>
</head>
<body>
<%
String action = request.getParameter("action");
int code = Integer.parseInt(request.getParameter("code"));

BoardDAO dao = BoardDAO.getInstance();
BoardDTO article = dao.getArticle(code);
%>

<form method="post" action="16_checkPassPro.jsp">
<input type="password" name="password" required>
<input type="hidden" name="action" value=<%=action %>>
<input type="hidden" name="code" value=<%=code %>>
<input type="submit" value="확인">
</form>
</body>
</html>