<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  joinPro : Process -->
<h1>JOIN PRO</h1>

<!-- 한글이 깨진다! parsing 하는 과정에서 일어나는 문제! -->


<%
request.setCharacterEncoding("utf-8");	// 한글이 깨질때 utf-8로 바꿔서 제대로 가져옴

String id = request.getParameter("id"); // 이 친구는 new하지 않았어도 자동으로 내장생성이 되는 객체임!
String pw = request.getParameter("pw"); // 죄다 String으로 받아온다!!!

// request.getParameter("파라미터 이름") 을 쓰면 해당 파라미터 이름을 달고 넘어온 값을 받는게 가능하다
// 다만 전부 String으로 넘어오니 연산이 필요한 숫자값의 경우
// ㄴ Integer.ParseInt("스트링")을 사용해서 바꿔줄 필요가 있음
%>

<h3><%=id %></h3>
<h3><%=pw %></h3>
</body>
</html>