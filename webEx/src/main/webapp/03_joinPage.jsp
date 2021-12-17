<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <style>
        *{
            margin: 0;
            padding: 0;
        }

        body{
            display: flex;

            flex-direction: column;
            align-items: center;
        }

        .join{
            display: flex;

            flex-direction: column;
            justify-content: space-evenly;
        }

        div{
            display: flex;
            
            flex-direction: row;
            gap: 5px
        }

        span{
            font-size: 1.5em;
        }

        input{
            font-size: 1.5em;
        }

        select{
            font-size: 1.5em;
        }

        div input{
            width: 33%;
        }
        div select{
            width: 33%;
        }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

    <title>회원가입을 하십쇼</title>
</head>
<body>
    <h1>웹 사이트</h1>
    <br><br><br>
    <form class="join" action="04_joinPro.jsp">
        <span>아이디</span><br>
        <input id="id" type="text" name="id"><br><br>
        <span>비밀번호</span><br>
        <input id="pw" type="password" name="pw"><br><br>
        <span>비밀번호 재확인</span><br>
        <input id="pwre" type="password" name="password"><br><br>

        <span>이름</span><br>
        <input id="name" type="text" name="name"><br><br>

        <span>생년월일</span><br>
        <div>
            <input id="year" type="number" placeholder="년" name="year">
            <select id="month" name="month">
                <option value="none">월</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
            </select>
            <input id="date" type="number" placeholder="일" name="date">
        </div>
        
        <br><br>

        <span>성별</span><br>
        <select id="gender" name="gender">
            <option value="none">성별</option>
            <option value="male">남</option>
            <option value="female">여</option>
            <option value="nope">선택안함</option>
        </select><br><br>

        <span>본인 확인 이메일(선택)</span><br>
        <input type="email" placeholder="적으면 좋고" name="email"><br><br>

        <span>휴대전화</span><br>
        <select id="region" name="region">
            <option value="대한민국 +82">대한민국 +82</option>
            <option value="노르웨이 +47">노르웨이 +47</option>
            <option value="네팔 +977">네팔 +977</option>
            <option value="뉴질랜드 +64">뉴질랜드 +64</option>
            <option value="덴마크 +45">덴마크 +45</option>
            <option value="도미니카공화국 +1 809">도미니카공화국 +1 809</option>
            <option value="독일 +49">독일 +49</option>
            <option value="라트비아 +371">라트비아 +371</option>
        </select><br>
        <input type="tel" placeholder="전화번호를 입력" name="tel"><br><br>

		<br><br>
        <input type="submit" value="가입하기">

    </form>

    <script type="text/javascript" src="02_validation.js"></script>
</body>
</html>