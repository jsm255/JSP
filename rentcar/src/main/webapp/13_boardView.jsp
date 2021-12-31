<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
BoardDAO bDao = BoardDAO.getInstance();
// ArrayList<BoardDTO> board = bDao.getBoard();

BoardDTO article = bDao.getArticle(Integer.parseInt(request.getParameter("articleNum")));
%>

<title><%=article.getTitle() %> - 렌트카 게시판</title>
</head>
<body>
    <table>
        <tr>
            <th colspan=4>게시글 제목</th>
        </tr>
        <tr>
            <td><span>ID&#9;&#9;</span></td><td><%=article.getId()%></td>
            <td>작성 시간&#9;</td><td><%=article.getTime()%></td>
        </tr>
        <tr>
            <td>조회 수&#9;</td><td><%=article.getView()%></td>
            <td>좋아요 수&#9;</td><td><%=article.getLike()%></td>
        </tr>
        <tr>
            <td height=300px colspan=4><%=article.getContent()%></td>
        </tr>
        <tr>
        	<td><button onclick="location.href=''">좋아요!</button></td>
        	<td><button onclick="location.href=''">글 수정</button></td>
        	<td><button onclick="location.href=''">글 삭제</button></td>
        	<td><button onclick="location.href=''">목록으로</button></td>
        </tr>
        
    </table>
</body>
</html>