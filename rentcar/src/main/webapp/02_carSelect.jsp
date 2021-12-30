<%@page import="car.CarDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="car.CarDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
        div{
            display: grid;

            width: 100vw;
            height: 100vh;
            grid-template-columns: 30% 30% 30%;
            grid-template-rows: 30% 30% 30%;
			
			gap : 4px;

            grid-auto-columns: 30%;
            grid-auto-rows: 30%;
        }
        article{
        cursor: pointer;
        }
        img{
        width:100%;
        height:70%;
        object-fit: cover;
        }
</style>

<title>차 선택하기</title>
</head>
<body>
<div>
<%
CarDAO cDao = CarDAO.getInstance();
ArrayList<CarDTO> cars = cDao.getCars();

// 차가 렌트되었는지를 확인하고 렌트되지 않았으면 표시해줌
for(CarDTO rentCheck : cars) {
	if(!rentCheck.isRent()) {
		%>
		<article onclick="location.href='08_rentPage.jsp?carCode=<%=rentCheck.getCarCode() %>'">
			<img src=<%= rentCheck.getImgPath()%>>
			<h4><%=rentCheck.getCarName() %></h4>
			<h5><%=cDao.printPrice(rentCheck) %></h5>
		</article>
		<%
	}
}
%>
</div>
</body>
</html>