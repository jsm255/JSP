<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style>
        span{
            white-space: pre;
        }
    </style>
    <title>Document</title>
</head>
<body>
    <h1>JOIN</h1>
    <form method="post" action="joinPro.jsp">
    <!-- form이 가지는 메서드의 기본값은 'get'이다! -->
    <!--  http://localhost:8081/webEx/joinPro.jsp? -->
    <!--         호스트   ---포트- ----Path--------?파라미터명=값&파라미터명=값... -->
    <!-- get으로 데이터를 넘기면 url 뒤에 API에 검색한 것처럼 뒤에 데이터가 훤히 보인다! -->
    
    <!--  post -->
    <!-- http://localhost:8081/webEx/joinPro.jsp -->
    <!-- 얘는 get과 달리 뒤에 적힌 파라미터를 보여주지 않는다! -->
        <span>id:&#9;</span><input type="text" name='id'><br><br>
        <!--  id가 파라미터명이 되었다! -->
        <!--  적힌 값이 id라는 이름을 달고 넘어감! -->
        <span>pw:&#9;</span><input type="text" name='pw'><br><br>
        <!--  pw가 파라미터명이 되었다! -->
        <!--  적힌 값이 pw라는 이름을 달고 넘어감! -->
        <input type="submit">
    </form>
</body>
</html>