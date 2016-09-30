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
@WebServlet(name = "TaskListServlet", urlPatterns = {"/TaskListServlet"})
public class TaskListServlet extends HttpServlet {

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
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            dd = new dronedbSLSB();
            dd.connect();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TaskListServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        /**
         * Process queued tasks from tasklist form
         */
        String queue = request.getParameter("queueTasks");
        if(queue != null && !queue.equals(""))
        {
            String[] tasks = request.getParameterValues("task");
            for(int i=0;i<tasks.length;i++)
            {
                int id = Integer.parseInt(tasks[i]);
                dd.setTaskStatus(id, 4);
            }
            dd.close();
            request.setAttribute("message", "Queued tasks");
            request.getRequestDispatcher("taskList.jsp").forward(request, response);
        }
        
        /**
         * Remove task where button is called
         */
        String remove = request.getParameter("removeid");
        if(remove != null && !remove.equals(""))
        {
            int id = Integer.parseInt(remove);
            dd.removeTask(id);
            dd.close();
            request.setAttribute("message", "Removed task");
            request.getRequestDispatcher("taskList.jsp").forward(request, response);
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
