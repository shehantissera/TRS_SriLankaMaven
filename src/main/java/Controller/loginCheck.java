/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Models.Login;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Shehan Tis
 */
@WebServlet(name = "loginCheck", urlPatterns = {"/loginCheck"})
public class loginCheck extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String username = request.getParameter("email");
            String password = request.getParameter("password");

            Login obj = new Login();
            User rslt = obj.existingLogin(username, password);
            HttpSession session = request.getSession(true);
            try {
                if (rslt.getFname() != null) {
                    if (rslt.getAccountStatus().equals("Active")) {
                        session.setAttribute("USID", rslt.getUSID());
                        session.setAttribute("fname", rslt.getFname());
                        session.setAttribute("lname", rslt.getLname());
                        session.setAttribute("email", username);
                        session.setAttribute("userLogin", "success");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }

                } else {
                    request.setAttribute("userLogin", "error");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                    //response.sendRedirect("login.jsp");
                }
            } catch (Exception ec) {
                request.setAttribute("userLogin", "error");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                Logger.getLogger(loginCheck.class.getName()).log(Level.SEVERE, null, ec);
            }
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
