<%@page import="user.UserDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="user.UserDAO"%>
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

<!-- JSP : html 문서 안에 있는 java 문장 -->

<!-- MVC 1 기법 -->

<!-- M : Model(database) -->
<!-- V : View = JSP/ 브라우저에 띄워지는 html/css/js의 영역! -->
<!-- C : Controller = JSP/ View를 통해 들어오는 요청값(Request)을 처리 -->

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
    
    <%
    String id2 = request.getParameter("id");
    String pw2 = request.getParameter("pw");
    
    UserDAO dao = UserDAO.getInstance();
    // No suitable driver found for jdbc:mysql://localhost:3306/loginServer?TimeZone=UTC
    // 드라이버가 없음!	-> mysql connector를 설치해서 jar 파일을 lib에 넣어주자!
    
    // 회원가입 처리
    UserDTO user = new UserDTO(id2, pw2);
    dao.addUser(user);
    
    ArrayList<UserDTO> users = dao.getUsers();
    UserDTO last = users.get(users.size()-1);
    %>
    <h1> <%=last.toString() %></h1>
    
    <form method="get" action="05_mainPage.jsp">
    <h3>회원 가입 정보를 확인하신 후 확인을 눌러주세요.</h3>
    <input type="submit" value="확인">
    </form>


    


</body>
</html>