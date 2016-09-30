<%-- 
    Document   : index
    Created on : Mar 10, 2016, 10:19:00 AM
    Author     : 562841
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drone Auditing - Sign in</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery-1.12.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="page-header">
            <h1>Drone Auditing</h1>
        </div>
        <div class="container">
            <div class="jumbotron">
                <form action="LoginServlet" method="POST">
                    <fieldset class="form-group">
                        <label for="User">Username</label>
                        <input type="text" class="form-control" name="username" placeholder="Username">
                    </fieldset>
                    <fieldset class="form-group">
                        <label for="********">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password">
                    </fieldset>
                    <button type="submit" class="btn btn-primary">Sign in</button>
                </form>
                </br>
                ${not empty msg ?  msg: ''}
            </div>
        </div>
    </body>
</html>
