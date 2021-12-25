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
if(request.getParameter("error") != null) {
	%>
	<script>alert("비밀번호가 틀렸습니다.")</script>
	<%
}
if(request.getParameter("delete") != null) {
	%>
	<script>alert("알 수 없는 이유로 삭제에 실패했습니다.")</script>
	<%
}
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
                <td height=300px colspan=6><%=content %></td>
            </tr>
            <tr>
            	<td colspan=2><button onclick="location.href='15_checkPass.jsp?code=<%=code%>&action=modify'">수정</button></td>
            	<td colspan=2><button onclick="location.href='15_checkPass.jsp?code=<%=code%>&action=delete'">삭제</button></td>
            	<td colspan=2><button onclick="location.href='10_boardList.jsp'">목록</button></td>
            </tr>
            
        </table>
    </div>
</body>
</html>