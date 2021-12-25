<%@page import="user.UserDTO"%>
<%@page import="user.UserDAO"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDAO"%>
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
    
    table{
    width: 1000px;
    text-align: center;
    
    border: solid 1px wheat;
    }
    </style>    

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<title>게시판</title>
</head>
<body>
    <%
    UserDAO uDao = UserDAO.getInstance();
    ArrayList<UserDTO> users = uDao.getUsers();
    String userName = uDao.getUserName();
    
//     java에서 세션값 설정하기
    session.setAttribute("log", UserDAO.log);
	
	// session.removeAttribute("log");
// 	response.sendRedirect(url);
    %>
        <h2><%=userName %>님 환영합니다.</h2>
    <form method="get" action="05_mainPage.jsp">
        <input type="submit" value="로그아웃">
    </form>
    <!-- 컨텐츠를 등록하고, 들어가면 DB에 있는 데이터들을 뿌려주는 -->
    <div>
        <table>
            <tr id="tableHead">
                <th>no</th>
                <th id="title">title</th>
                <th>id</th>
                <th>view</th>
                <th>like</th>
                <th>date</th>
            </tr>
            <% 
            if(request.getParameter("delete") != null) {
            	System.out.println("삭제 성공!");
            	%>
            	<script>alert("삭제에 성공했습니다.")</script>
            	<%
            }
            
            // 페이지 표시
            BoardDAO bDao = BoardDAO.getInstance();
        	ArrayList<BoardDTO> temp = bDao.getBoard();
            
        	int lastPage = temp.size() / 10;
            if(temp.size() % 10 != 0) lastPage ++;
        	
            int pageNum;
            if(request.getParameter("pageNum") == null) pageNum = 1;
            else pageNum = Integer.parseInt(request.getParameter("pageNum").toString());	// 페이지를 읽음
            if(request.getParameter("move") != null) {
	            if(Integer.parseInt(request.getParameter("move")) == 2) {
	            	if(lastPage > pageNum) pageNum ++;
	            }
	            else{
	            	if(pageNum > 1) pageNum --;
	            }
				response.sendRedirect(String.format("10_boardList.jsp?pageNum=%d",pageNum));
// 				request.getRequestDispatcher(String.format("10_boardList.jsp?pageNum=%d",pageNum)).forward(request, response);
            }
//             pageNum += moving;
//             request.getRequestDispatcher("10_boardList.jsp").forward(request, response);	// 페이지를 다시 불러옴

        		
				int contentStartNum = (pageNum-1)*10;
				int contentEndNum = (pageNum*10) -1 >= temp.size()-1 ? temp.size()-1 : (pageNum*10) -1;
            
            	
            	for(int i = contentStartNum; i <= contentEndNum; i++) {
            		BoardDTO now = temp.get(i);
            		int code = now.getCode();
            		String title = now.getTitle();
            		String id = now.getId();
            		int view = now.getView();
            		int like = now.getLike();
            		Timestamp date = now.getDate();
            		%>
            		<tr>
            		<td><%=code %>
            		<td><a href="18_boardView.jsp?code=<%=code%>"><%=title %></a>
            		<td><%=id %>
            		<td><%=view %>
            		<td><%=like %>
            		<td><%=date %>
            		</tr>
            		<%
            	}
            	
            %>
            <tr>
            <%
            int pageStart = pageNum - (pageNum % 10) + 1;
            int pageEnd = pageNum - (pageNum % 10) + 10 >= lastPage ? lastPage : pageNum - (pageNum % 10) + 10;
            
            %>
            <td colspan=5>
            
            <%
            for(int i = pageStart; i<=pageEnd; i++) {
            	%>
            	<a href="10_boardList.jsp?pageNum=<%=i%>"><%=i %></a>
            	<%
            }
            %>
            <%
            if(pageNum != 1){
            	%>
            <button onclick="location.href = '10_boardList.jsp?pageNum=<%=pageNum%>&move=1'">이전</button>
            	<%
            }
            if(pageNum < lastPage){
            	%>
            <button onclick="location.href = '10_boardList.jsp?pageNum=<%=pageNum%>&move=2'">다음</button>
            <%
            }
            %>
            
            <td>
            <button onclick="location.href = '11_boardWrite.jsp'">글 작성</button>
            </td>
            
        </table>
    </div>
    
</body>
</html>