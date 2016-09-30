<%-- 
    Document   : main
    Created on : Mar 10, 2016, 10:47:25 AM
    Author     : 562841
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%
    if(session.getAttribute("user")==null && session.getAttribute("admin")==null)
        response.sendRedirect("index.jsp?message=Unauthorized access");
%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drone Auditing - Main</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery-1.12.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-default">
            <ul class="nav nav-pills">
                <li class="active"><a href="main.jsp">Main</a></li>
                <li><a href="droneCommand.jsp">Drone</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Tasks<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="taskList.jsp">View</a></li>
                        <li><a href="tasks.jsp">Create</a></li>
                        <li><a href="reports.jsp">Reports</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="products.jsp">View</a></li>
                        <li><a href="products.jsp">Modify</a></li>
                    </ul>
                </li>
                <li><a href="locations.jsp">Locations</a></li>
                <li><a href="LoginServlet?signout">Sign out</a></li>
            </ul>
        </nav>
        <div class="container">
            <div class="jumbotron">
                Welcome to Drone Auditing Software
            </div>
        </div>
    </body>
</html>
