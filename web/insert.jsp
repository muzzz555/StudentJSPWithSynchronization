<%@page import="Database.StudentTable"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : insert
    Created on : Nov 9, 2021, 11:35:15 PM
    Author     : AN515-43
--%>

<%@page import="Database.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result insert</title>
    </head>
    <body>
        
        <% 
             String name = request.getParameter("insertname");
             Double gpa = Double.parseDouble(request.getParameter("insertGPA"));
             Student std = new Student();
             std.setName(name);
             std.setGpa(gpa);
             StudentTable.insertStudent(std);
             out.print("Insertcomplete");
        %>
    </body>
</html>
