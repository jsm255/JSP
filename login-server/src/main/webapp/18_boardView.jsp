<%@page import="java.sql.Timestamp"%>
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table{
border: solid 1px wheat;
border-collapse: collapse;

width: 80%;
height: 40%;
}
td{
border: solid 1px black;
}
</style>
<%
int inputCode = Integer.parseInt(request.getParameter("code"));
BoardDAO dao = BoardDAO.getInstance();
BoardDTO article = dao.getArticle(inputCode);
%>
<title><%=article.getTitle() %> 읽는 중</title>
</head>
<body>
<%
int code = article.getCode();
String title = article.getTitle();
String content = article.getContent();
String id = article.getId();
String pw = article.getPassword();
int view = article.getView();
int like = article.getLike();
Timestamp date = article.getDate();
%>
    <div>
        <table>
            <tr>
                <th colspan=6><%=title %></th>
            </tr>
            <tr>
                <td>글 번호</td>
                <td><%=code %></td>
                <td>작성자</td>
                <td><%=id %></td>
                <td>작성 시간</td>
                <td><%=date %></td>
            </tr>
            <tr>
                <td colspan=6><%=content %></td>
            </tr>
        </table>
    </div>
</body>
</html>