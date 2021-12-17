<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style>
        body{
            display: flex;

            flex-direction: column;

            justify-content: space-evenly;
        }
    </style>
<title>가입 내역</title>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
int year = Integer.parseInt(request.getParameter("year"));
int month = Integer.parseInt(request.getParameter("month"));
int date = Integer.parseInt(request.getParameter("date"));
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String region = request.getParameter("region");
String tel = request.getParameter("tel");
%>

<div>
        id = <%=id%>
    </div>
    <div>
        pw = <%=pw%>
    </div>
    <div>
        name = <%=name%>
    </div>
    <div>
        Date = <%=year%>년 <%=month%>월 <%=date%>일
    </div>
    <div>
        id = <%=id%>
    </div>
    <div>
        gender = <%=gender%>
    </div>
    <div>
        email = <%=email%>
    </div>
    <div>
        region = <%=region%>
    </div>
    <div>
        tel = <%=tel%>
    </div>


</body>
</html>