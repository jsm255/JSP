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
			background-image: url("image/mainBackGround.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            
            width: 100vw;
            height: 100vh;
	}
	div{
			display: grid;
            grid-template-columns: 1fr 1fr;
            grid-template-rows: 40% 60%;
            grid-template-areas:
            "h1 h1"
            ;
            
            gap: 10px;
	}
	h1{
		grid-area: h1;
		
		display: flex;
		justify-content: center;
		align-items: center;
		
		color: orange;
	}
	article{
		cursor: pointer;
	}
	img{
		width: 100%;
		height: 400px;
		object-fit: cover;
	}
	button{
		width: 100%;
		height: 400px;
		border: none;
		cursor: pointer;
	}
</style>

<title>렌트카 메인페이지</title>
</head>
<body>
	<div>
        <h1>렌트 카</h1>
        <article onclick="location.href='02_carSelect.jsp'">
        	<button><img src="image/theNewGrandure.jpg"></button>
        	<h4>차 선택하기</h4>	
        </article>
        <article onclick="location.href='03_myPage.jsp'">
        	<button></button>
        	<h4>마이 페이지</h4>
        </article>
        
    </div>
</body>
</html>