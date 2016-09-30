<%-- 
    Document   : index
    Created on : Feb 21, 2016, 1:24:31 AM
    Author     : 670918
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="controller" class="control.DroneController" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drone Auditing - Drone controller</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery-1.12.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-default">
            <ul class="nav nav-pills">
                <li><a href="main.jsp">Main</a></li>
                <li class="active"><a href="droneCommand.jsp">Drone</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Tasks<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="taskList.jsp">View</a></li>
                        <li><a href="tasks.jsp">Modify</a></li>
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
                <h1>Input commands for your drone</h1>
                Enter a number in the text box and click a button to add the command to the list.<br>
                If movement is selected, the number will be how many metres to move, if turn is selected, the number will be how many degrees to turn.<BR><BR>
            </div>
        
        <form action="PreFlightServlet" method="GET">
        <input type="hidden" name="cmds" value="${cmds}" />
        
        <div class="row">
            
        <div class="col-xs-5">
            Degrees/metres <input class="form-control" type="text" name="number" placeholder="Integer value">
            
            <h5>Start/Stop</h5>
            <div class="btn-group" role="group">
                <button class="btn btn-default" type="submit" name="takeoff" value="Take off">Take off</button>
                <button class="btn btn-default" type="submit" name="land" value="Land">Land</button>
            </div>

            <h5>Movement</h5>
            <div class="btn-group" role="group">
                <button class="btn btn-default" type="submit" name="forward" value="Forward">Forward</button>
                <button class="btn btn-default" type="submit" name="backward" value="Backward">Backward</button>
                <button class="btn btn-default" type="submit" name="left" value="Left">Left</button>
                <button class="btn btn-default" type="submit" name="right" value="Right">Right</button>
            </div>

            <h5>Turning</h5>
            <div class="btn-group" role="group">
                <button class="btn btn-default" type="submit" name="turnleft" value="Left">Left</button>
                <button class="btn btn-default" type="submit" name="turnright" value="Right">Right</button>
            </div>

            <h5>Other</h5>
            <div class="btn-group" role="group">
                <button class="btn btn-default" type="submit" name="wait" value="Wait">Wait</button>
                <button class="btn btn-default" type="submit" name="abort" value="Abort">Abort</button>
                <button class="btn btn-default" type="submit" name="scan" value="Scan">Scan</button>
                <button class="btn btn-default" type="submit" name="execute" value="Execute">Execute</button>
            </div>
            </br></br>
            <button class="btn btn-default" type="submit" name="clear" value="Clear">Clear</button>
            </br>
            ${not empty error ?  error: ''}<br>  
        </div>
        
        <div class="col-sm-6">
            <select size="22" name="options" style="width:40%; position:absolute; right:3%;">
                <% 
                    String cmds = (String) request.getAttribute("cmds");
                    if (cmds != null)
                        controller.procCommands(cmds);

                    JspWriter out2 = pageContext.getOut();
                    controller.getCommands(out2);
                    request.setAttribute("control", controller);
                %>
            </select>
        </div>
        
        </form>
              
        </div>
    </div>
    </body>
</html>
