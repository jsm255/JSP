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

        #loginForm{
            display: grid;

            width: 60vw;
            grid-template-columns: 60% 40%;
            grid-template-rows: 50% 50%;
            grid-template-areas: 
            "id button"
            "pw button"
            ;

            gap: 10px;
        }

        #id{
            grid-area: id;
        }
        #pw{
            grid-area: pw;
        }
        #loginButton{
            grid-area:button;
        }
        #joinButton{
            width: 61vw;
        }

        input[type="submit"]{
            padding: 10px;
        }

        
    </style>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <title>Login</title>
</head>
<body>
    <h1> 로그인 </h1>

    <form id="loginForm" method="get" action="07_loginPro.jsp">
        <input id="id" type="text" name="id" required><br>
        <input id="pw" type="text" name="pw" required>
        <input id="loginButton" type="submit" value="로그인">
    </form><br>
    <form method="get" action="01_agree.jsp">
        <input id="joinButton" type="submit" value="회원가입">
    </form>
    

    <script type="text/javascript" src="02_validation.js"></script>
</body>
</html>