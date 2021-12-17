<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
table{
border: solid 1px black;
}
td{
border: solid 1px violet;
}
</style>
<title>Insert title here</title>
</head>
<body>


<%--
구구단 랜덤 문제 출제 (5개)
form 안에 table 형식으로 문제와 답입력 칸을 제시
사용자가 입력한 답을 -> pro 페이지에서 검증 후 -> 성적표를 출력 (정오표)

gugudan column : no, quiz, input
pro column : no, quiz, answer, dap, O/X 점수(100)
 --%>
 <form method="post" action="1216_gugudanPro.jsp">
 
 <table>
 <% 
 Random ran = new Random();
 for(int i = 0; i<5; i++) { 
	 int x = ran.nextInt(8)+2;
	 int y = ran.nextInt(8)+2;
	 String xName = "questionX" + String.valueOf(i+1);
	 String yName = "questionY" + String.valueOf(i+1);
	 %>
	 <%
	 String name = "answer" + String.valueOf(i+1);%>
	 <tr>
	 <td><%=i+1 %>
	 <td><%=x %>x<%=y %>=?
	 <td><input type='text' placeholder="답을 입력하세요." required name=<%=name %>>
	 
	 <!--  값도 안주고 가져오라고만 하니까 에러가 난다 -->
	 <input type="hidden" name=<%=xName %> value=<%=x %>>
	 <input type="hidden" name=<%=yName %> value=<%=y %>>
	 <%
	 
 }
 		%>
 		
</table>
<br><br>
<input type='submit'>
 </form>
</body>
</html>