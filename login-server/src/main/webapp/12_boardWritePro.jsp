<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 업로드 중...</title>
</head>
<body>
<%
UserDAO uDao = UserDAO.getInstance();
request.setCharacterEncoding("utf-8");
String id = uDao.getUserName();
String title = request.getParameter("title");
String content = request.getParameter("content");
String pw = request.getParameter("password");

// 혹시나 등록에 실패했을 때 복구시켜주기 위해서 세션에 저장
session.setAttribute("id", id);
session.setAttribute("title", title);
session.setAttribute("content", content);
session.setAttribute("pw", pw);

BoardDTO article = new BoardDTO(title, content, id, pw);
BoardDAO bDao = BoardDAO.getInstance();
if(bDao.writeArticle(article)){
	response.sendRedirect("10_boardList.jsp");
	// 저장이 됐으니까 삭제
	session.removeAttribute("id");
	session.removeAttribute("title");
	session.removeAttribute("content");
	session.removeAttribute("pw");
}
else{
	response.sendRedirect("11_boardWrite.jsp?error=failed");
}
%>
</body>
</html>