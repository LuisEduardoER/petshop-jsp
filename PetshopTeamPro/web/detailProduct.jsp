<%@page import="bean.Animal"%>
<%@page import="dao.AnimalDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="HTML\header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int id = Integer.parseInt(request.getParameter("ID"));
        Animal detail = AnimalDAO.fethcDetail(id);
        out.println("id = " + id);
        if(detail ==  null){
            out.println("no record was found or err in sql ");
        }
               else out.print("descript:" + detail.getFullDesc());
        %>
    </body>
</html>
