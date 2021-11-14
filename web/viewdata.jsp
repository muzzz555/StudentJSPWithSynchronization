<%-- 
    Document   : viewdata
    Created on : Nov 13, 2021, 11:30:59 AM
    Author     : AN515-43
--%>

<%@page import="Database.StudentTable"%>
<%@page import="Database.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ViewData</title>
    </head>
    <body>

        <%
        List<Student> StudentList = StudentTable.findAllStudent();
         if (StudentList.size() > 0) {
                for (Student std : StudentList) {
                    out.print(std.getId() + " ");
                    out.print(std.getName() + " ");
                    out.print(std.getGpa() + " ");
                    out.print("<br/>");
                }
            } else {
                out.println("No Data");
            }
        %>
    </body>
</html>
