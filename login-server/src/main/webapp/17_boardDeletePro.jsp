<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 삭제</title>
</head>
<body>
<%
int inputCode = Integer.parseInt(request.getParameter("code"));
BoardDAO dao = BoardDAO.getInstance();
if(dao.deleteArticle(inputCode)) {
	response.sendRedirect("10_boardList.jsp?delete=complete");
}
else {
	response.sendRedirect(String.format("18_boardView.jsp?delete=fail&code=%d",inputCode));
}
%>
</body>
</html>