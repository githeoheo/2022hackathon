<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty property="userID" name="user"/>
<jsp:setProperty property="userPassword" name="user"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>>JSP 게시판 웹 사이트</title>
</head>
<body>
    <%
        UserDAO userDAO = new UserDAO();
        UserDAO userDAO = new UserDAO();
        int result = userDAO.login(user.getUserID(), user.getUserPassword());
    %>
    <script type="text/javascript">
        var result = <%result%>;
        if(result == 1){
            location.href = 'main.jsp';
        }
        else if(result == 0){
            alert('비밀번호가 틀립니다.');
            history.back();
        }
        else if(result == -1){
            alert('존재하지 않는 아이디입니다.');
            history.back();
        }
        else if(result == -2){
            alert('DB 오류가 발생했습니다.');
            history.back();
        }
       </script>
   
 
</body>
</html>


<!-- 

        if(result == 1) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("location.href = 'main.jsp'");
            script.println("</script>");
        }
        else if(result == 0) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('비밀번호가 틀립니다.')");
            script.println("history.back()");
            script.println("</script>");
        }
        else if(result == -1) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('존재하지 않는 아이디입니다..')");
            script.println("history.back()");
            script.println("</script>");
        }

        else if(result == -2) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('데이터베이스 오류입니다.')");
            script.println("history.back()");
            script.println("</script>");
        }

 -->