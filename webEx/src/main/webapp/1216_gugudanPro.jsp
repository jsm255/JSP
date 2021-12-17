<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
td{
border: solid 1px green;
}
</style>
<title>빠밤</title>
</head>
<body>

<%
final int SIZE = 5;
int[] xs = new int[SIZE];
int[] ys = new int[SIZE];
int[] answers = new int[SIZE];

int correct = 0;
int point = 0;
%>
<table>
<%for(int i = 0; i<SIZE; i++) {%>
	<tr><td><%=i+1 %>
	<%
	xs[i] = Integer.parseInt(request.getParameter("questionX"+String.valueOf(i+1)));
	ys[i] = Integer.parseInt(request.getParameter("questionY"+String.valueOf(i+1)));
	%>
	<td><%=xs[i] %>x<%=ys[i] %>=?
	
	<%
	answers[i] = Integer.parseInt(request.getParameter("answer"+String.valueOf(i+1)));
	%>
	<td>유저의 답 : <%=answers[i] %>
	<%
	int actualAnswer = xs[i] * ys[i];
	%>
	<td>정답 : <%=actualAnswer %>
	<%
	if(answers[i] == actualAnswer){
		%>
		<td> O
		<%
		correct ++;
		point += 20;
	}
	else {
		%>
		<td> X
		<%
	}
}
%>
<tr><td colspan=6>총 정답 수 : <%=correct %>, 점수는 <%=point %>점입니다.
</table>
</body>
</html>