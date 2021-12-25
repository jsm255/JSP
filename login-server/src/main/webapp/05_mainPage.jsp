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
        }


        div{
            display: flex;

            flex-direction: row;

            justify-content: space-evenly;
        }

        h1{
            display: flex;

            justify-content: center;
        }

        input{
            width: 200px;
            padding: 10px;
            font-size: 1.5em;
        }
    </style>
    
    <title>랜딩 페이지</title>
</head>
<body>

<%
if(UserDAO.log != -1) {
	UserDAO dao = UserDAO.getInstance();
	dao.logout();
	
session.removeAttribute("log");
}
%>

    <h1> 랜딩 페이지 </h1>

    <div>
        <form method="get" action="01_agree.jsp">
            <input type="submit" value="회원가입">
        </form>
        <form method="get" action="06_login.jsp">
            <input type="submit" value="로그인">
        </form>
    </div>

</body>
</html>