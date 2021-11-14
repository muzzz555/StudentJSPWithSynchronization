<%-- 
    Document   : delete
    Created on : Nov 9, 2021, 11:37:24 PM
    Author     : AN515-43
--%>



<%@page import="Database.StudentTable"%>
<%@page import="Database.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Result</title>
    </head>
    <body>
        <%
         
        int id = Integer.parseInt(request.getParameter("deleteID"));
        Student std = StudentTable.findStudentById(id);
        if(std!= null){
                StudentTable.removeStudent(std);
                out.println("Successfully delete.");
            }else{
                out.println("Not found.");
            }
                
        %>
    </body>
</html>
