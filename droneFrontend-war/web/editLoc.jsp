<%-- 
    Document   : locations
    Created on : Mar 10, 2016, 11:22:26 AM
    Author     : 562841
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="helper" class="control.TableHelper" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drone Auditing - Locations</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery-1.12.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function()
            {
                $('#productModal').on('show',function(event)
                {
                    var id = $(event.target);
                    
                    var name = button.data('pName');
                    var upc = button.data('pUPC');
                    
                    var modal = $(this);
                    modal.find('#prodName').value(name);
                    modal.find('#prodUpc').value(upc);
                });
            });
        </script>
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
                <h1>Modify Shelf Contents</h1>
            </div>
            
            <%
                String shelfId = (String)request.getAttribute("shelfId");  
            %>
            <h2>Shelf <%=shelfId%></h2>
            <%=helper.getShelf(shelfId)%>
            <div class="col-sm-4">
                    <img src="${shelfImg}"/>
                </div>
        </div>
        
        
        <div class="modal fade" id="productModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        Edit Shelf
                    </div>
                    
                    <form action="" method="GET">
                    <div class="modal-body">
                        Product Name <input class="form-control" type="text" id="prodName" placeholder="product"></br>
                        UPC <input class="form-control" type="text" id="prodUpc" placeholder="1115556464"></br>
                    </div>
                        
                    <div class="modal-footer">
                        <button class="btn btn-default" type="submit" data-dismiss="modal" name="editShelfcancel">Cancel</button>
                        <button class="btn btn-primary" type="submit" name="editShelfsave">Save</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
