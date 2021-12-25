<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table{
text-align: center;
}
input{
width: 400px;
}
#content{
width: 400px;
height: 200px;
resize: none;
}
input[type=submit]{
width: 100px;
height: 30px;
}
</style>

<title>글 작성하기</title>
</head>
<body>
<%
// 그냥 넣어도 위화감이 없도록 빈 문자열을 생성
String title = "";
String content = "";
String pw = "";
if(request.getParameter("error") != null) {	// 에러가 났으면?
	%>
	<script>alert("알 수 없는 오류가 발생했습니다! 글을 복구했습니다.")</script>
	<%
	title = String.valueOf(session.getAttribute("title"));
	content = String.valueOf(session.getAttribute("content"));
	pw = String.valueOf(session.getAttribute("pw"));
	
}
%>
    <div>
        <form method="post" action="12_boardWritePro.jsp">
            <table>
                <tr>
                    <td><span>글 제목</span></td>
                    <td><input type="text" name="title" required value=<%=title %>></td>
                </tr>
                <tr>
                    <td><span>글 내용</span></td>
                    <td><textarea id="content" name="content" required><%=content %></textarea></td>
                </tr>
                <tr>
                	<td colspan=2><span>비밀번호를 기억해둡시다!</span></td>
                </tr>
                <tr>
                	<td><span>비밀번호</span>
                	<td><input type="password" name="password" required value=<%=pw %>></td>
                </tr>
                <tr>
                	<td colspan=2><input type="submit" value="작성 완료"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>