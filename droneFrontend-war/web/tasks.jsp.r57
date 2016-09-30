<%-- 
    Document   : task
    Created on : Feb 29, 2016, 12:10:05 PM
    Author     : 643119
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drone Auditing - Tasks</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery-1.12.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-default">
            <ul class="nav nav-pills">
                <li><a href="main.jsp">Main</a></li>
                <li><a href="droneCommand.jsp">Drone</a></li>
                <li class="dropdown active">
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
                <h1>Create new Task</h1>
                Manually create new task. Be sure to know the available x and y coordinates of the shelf being checked.
            </div>
            
            <div class="rows">
                <div class="col-xs-6">
                    <form action="TaskServlet" method="post">
                        Shelf <input class="form-control" type="text" name="taskShelf" placeholder="A1"></br>
                        Shelf X pos<input class="form-control" type="text" name="taskShelfx" placeholder="A1"></br>
                        Shelf Y pos<input class="form-control" type="text" name="taskShelfy" placeholder="A1"></br>
                        Product UPC <input class="form-control" type="text" name="taskUPC" placeholder="111222333000"></br>
                        <button class="btn btn-primary" type="submit" name="saveTask">Create Task</button>
                    </form>
                    ${not empty message ?  message: ''}
                </div>
                
            </div>
            
        </div>
    </body>
</html>
