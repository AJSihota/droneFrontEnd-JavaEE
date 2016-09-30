/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import SLSBeans.dronedbSLSB;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 562841
 */
@WebServlet(name = "TaskServlet", urlPatterns = {"/TaskServlet"})
public class TaskServlet extends HttpServlet {
    
    dronedbSLSB dd;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request,response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String shelfId = request.getParameter("taskShelf");
        String shelf_x = request.getParameter("taskShelfx");
        String shelf_y = request.getParameter("taskShelfy");
        String UPC = request.getParameter("taskUPC");
        
        int x = 0;
        int y = 0;
        
        /**
         * Create task button from shelf locations page or create task page
         */
        String create = request.getParameter("create");
        if(create != null && !create.equals(""))
        {
            //UPC validation
            if(UPC.length() == 12)
            {
                try{
                    Long.parseLong(UPC);
                }
                catch(NumberFormatException ex){
                    request.setAttribute("message", "Invalid UPC");
                    request.getRequestDispatcher("tasks.jsp").forward(request, response);
                }

            }
            else
            {
                request.setAttribute("message", "Invalid UPC");
                request.getRequestDispatcher("tasks.jsp").forward(request, response);
            }

            //x y coordinates validation
            try{
                x = Integer.parseInt(shelf_x);
                x = Math.abs(x);
                y = Integer.parseInt(shelf_y);
                y = Math.abs(y);
            }
            catch(NumberFormatException ex){
                request.setAttribute("message", "Invalid shelf coordinates");
                request.getRequestDispatcher("tasks.jsp").forward(request, response);
            }

            if(shelfId != null && !shelfId.equals("") && !shelfId.contains("<") && UPC != null && !UPC.equals("") && !UPC.contains("<"))
            {
                try {
                    dd = new dronedbSLSB();
                    dd.connect();
                    dd.addTask(UPC, shelfId, x, y);

                    request.setAttribute("message", "Successfully added task");
                    request.getRequestDispatcher("taskList.jsp").forward(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(TaskServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            else
            {
                request.setAttribute("message", "Invalid input");
                request.getRequestDispatcher("tasks.jsp").forward(request, response);
            }
        }
        else
        {
            response.sendRedirect("main.jsp");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
