<%-- 
    Document   : products
    Created on : Mar 10, 2016, 11:22:12 AM
    Author     : 562841
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="helper" class="control.TableHelper" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drone Auditing - Products</title>
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
                        <li><a href="tasks.jsp">Modify</a></li>
                        <li><a href="reports.jsp">Reports</a></li>
                    </ul>
                </li>
                <li class="dropdown active">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="products.jsp">View</a></li>
                        <li><a href="editProd.jsp">Modify</a></li>
                    </ul>
                </li>
                <li><a href="locations.jsp">Locations</a></li>
                <li><a href="LoginServlet?signout">Sign out</a></li>
            </ul>
        </nav>
        <div class="container">
            <div class="jumbotron">
                <h1>Products</h1>
            </div>
            
            <%=helper.getProducts()%>
        </div>
    </body>
</html>
