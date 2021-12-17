<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>수강신청 내역</h1>

<%
// 동일한 이름의 파라미터명의 값들을(여러 개) 가져올 경우에는
// request.getParameterValues(파라미터명)을 사용한다!
String[] values = request.getParameterValues("subjects");
for(int i = 0; i<values.length; i++){
	
	System.out.println(values[i]);
	
	%>
	<p><%=values[i] %></p>
	
	<%
}
%>
</body>
</html>