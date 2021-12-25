<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진행 중...</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String pw = request.getParameter("password");
String action = request.getParameter("action");
int code = Integer.parseInt(request.getParameter("code"));

BoardDAO dao = BoardDAO.getInstance();
BoardDTO article = dao.getArticle(code);

String articlePw = article.getPassword();

if(articlePw.equals(pw)){
	if(action.equals("modify")){
		response.sendRedirect(String.format("13_boardUpdate.jsp?code=%d",code));
		
	}
	else {
		response.sendRedirect(String.format("17_boardDeletePro.jsp?code=%d",code));
	}
}
else {
	response.sendRedirect(String.format("18_boardView.jsp?code=%d&error=pw",code));

}
%>
</body>
</html>