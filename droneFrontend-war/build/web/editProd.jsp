<%-- 
    Document   : products
    Created on : Mar 10, 2016, 11:22:12 AM
    Author     : 562841
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <li><a href="products.jsp">Modify</a></li>
                    </ul>
                </li>
                <li><a href="locations.jsp">Locations</a></li>
                <li><a href="LoginServlet?signout">Sign out</a></li>
            </ul>
        </nav>
        <div class="container">
            <div class="jumbotron">
                <h1>Products</h1>
                TODO: product forms</br>
                Create, edit products here
            </div>
            
            <div class="rows">
            <div class="col-xs-6">
                <form action="" method="post">
                    Name <input class="form-control" type="text" name="prodName" placeholder="A1"></br>
                    UPC <input class="form-control" type="text" name="prodUPC" placeholder="111222333000"></br>
                    Supplier <input class="form-control" type="text" name="prodSupplier" placeholder="44563"></br>
                    Classifier <input class="form-control" type="text" name="prodClassifier" placeholder="product.xml"></br>
                    Locations <input class="form-control" type="text" name="prodLocations" placeholder="201A:1,2; 215A:2,3;"></br>
                    <button type="submit" class="btn btn-primary">Add product</button>
                </form>
            </div>
            </div>
            
            TODO: 
                product list/menu
        </div>
    </body>
</html>
