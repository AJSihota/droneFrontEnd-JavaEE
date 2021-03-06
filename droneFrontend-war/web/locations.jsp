<%-- 
    Document   : locations
    Created on : Mar 10, 2016, 11:22:26 AM
    Author     : 562841
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drone Auditing - Locations</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery-1.12.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-default">
            <ul class="nav nav-pills">
                <li><a href="main.jsp">Main</a></li>
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
                <li class="active"><a href="locations.jsp">Locations</a></li>
                <li><a href="LoginServlet?signout">Sign out</a></li>
            </ul>
        </nav>
        <div class="container">
            <div class="jumbotron">
                <h1>Locations</h1>
            </div>
            
            <button type="button" class="btn btn-info btn-block" data-toggle="collapse" data-target="#map201col">Room 201</button>
            <div id="map201col" class="collapse">
            <img class="center-block" src="maps/map201_overA.png" usemap="#map201"/>
            <map name="map201">
                <area shape="rect" coords="103,451,263,490" href="ShelfServlet?shelf=201A">
                <area shape="rect" coords="602,449,762,488" href="ShelfServlet?shelf=201B">
            </map>
            </div></br>
            <button type="button" class="btn btn-info btn-block" data-toggle="collapse" data-target="#map215col">Room 215</button>
            <div id="map215col" class="collapse">
            <img class="center-block" src="maps/map215_overA.png" usemap="#map215"/>
            <map name="map215">
                <area shape="rect" coords="401,450,561,490" href="ShelfServlet?shelf=215A">
            </map>
            </div></br>
        </div>
    </body>
</html>
