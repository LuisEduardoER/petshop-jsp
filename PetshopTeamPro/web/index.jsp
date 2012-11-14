<%@page import="bean.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.AnimalDAO"%>
<%@page import="bean.Animal"%>
<%@include file="HTML/header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
      String msg = request.getParameter("login_ok");
      if((msg!= null) && msg.equals("1")){
          out.println("hello, login successfully!");
      }
      %>
       <form action="loginServlet" method="get">
            <p>Username :<input type="text" name="un" size="20"/></p><br/>
            <p>Password :<input type="text" name="pw" size="20"/></p>
            <p align="center"><input name="submit" type="submit" value="login" /></br>
                <a align="center" href="#"> Click here to Register</a>
            </p>
        </form>
        
<%
ArrayList<Animal> list = AnimalDAO.fetchAnimal(0);
for(Animal a : list){
%>
        <div class="intro1" >
            <a href ="#"><img src="<%=a.getThumb()%>" /></a>
            <p>
               <%=a.getShortDesc()%>
            </p>
            <a  href ="detailProduct.jsp?ID=<%=a.getId()%>">Chi tiết</a>
        </div>
<%}%>
    </body>
</html>
