<%-- 
    Document   : update
    Created on : Nov 9, 2021, 11:35:39 PM
    Author     : AN515-43
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.Random"%>
<%@page import="Database.StudentTable"%>
<%@page import="Database.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Result</title>
    </head>
    <body>
        <%
        String idStr = request.getParameter("id");
        String name = request.getParameter("updatename");
        double gpa = Double.parseDouble(request.getParameter("updategpa"));
        int id = Integer.parseInt(idStr);
        Student std = StudentTable.findStudentById(id);
        
        if(std!= null){
                std.setName(name);
                std.setGpa(gpa);
                StudentTable.updateStudent(std);
                out.println("Successfully update.");
            }else{
                out.println("Not found.");
            }
            

    %>
    </body>
</html>
