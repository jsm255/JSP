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

        .agree{
            display: flex;

            flex-direction: column;

            font-size: 1.5em;
        }

        textarea{
            font-size: 1.5em;
        }

        #button{
            font-size: 1.5em;            
        }
    </style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<title>동의하세요</title>
</head>
<body>
    <h1> 웹 사이트 </h1>
    
    <br>

    <form class="agree" action="03_joinPage.jsp">
        <div>
            <input type="checkbox" name="all" onchange="checkAll(form)"><span>모두 동의합니다.</span>
        </div>
        
        <br>

        <div>
            <input type="checkbox" id="must" name="must"><span>반드시 동의해야하는 약관 1</span><br>
            <textarea>아무튼 엄청 긴 약관</textarea>
        </div>

        <br><br>

        <div>
            <input type="checkbox" id="must" name="must"><span>반드시 동의해야하는 약관 2</span><br>
            <textarea>위와 같이 엄청 긴 약관</textarea>
        </div>

        <br><br>

        <div>
            <input type="checkbox" name="free"><span>동의하지 않아도 되는 약관 1</span><br>
            <textarea>적당히 긴 약관</textarea>
        </div>

        <br><br>

        <div>
            <input type="checkbox" name="free"><span>동의하지 않아도 되는 약관 2</span><br>
            <textarea>상당히 짧은 약관</textarea>
        </div>

        <br><br>

        <input id="button" type="submit" value="확인">
    </form>

    <script>

    </script>

    <script type="text/javascript" src="02_validation.js"></script>
</body>
</html>