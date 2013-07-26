/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Models.Record;
import Models.SendEmails;
import Models.UniqueKeyGenerator;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
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
@WebServlet(name = "UserController", urlPatterns = {"/UserController"})
public class UserController extends HttpServlet {

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
            if (request.getParameter("addUser") != null) {
                HttpSession session = request.getSession(true);
                String USID = "";
                try {
                    USID = session.getAttribute("USID").toString();
                } catch (Exception e) {
                    USID = "0";
                }
                java.util.Date date = new java.util.Date();

                User user = new User();
                UniqueKeyGenerator key = new UniqueKeyGenerator();
                long verificationKey = key.generateNewKey3();
                long USIDKey = key.generateNewKey();

                user.setUSID(USIDKey);
                user.setFname(request.getParameter("fname"));
                user.setLname(request.getParameter("lname"));
                user.setAgeRange(request.getParameter("ageRange"));
                user.setGender(request.getParameter("gender"));
                user.setEmail(request.getParameter("email"));
                user.setPassword(request.getParameter("password"));
                user.setCountry(request.getParameter("country"));
                user.setUsertype(request.getParameter("usertype"));
                user.setAccountStatus("New");

                User rslt = user.insertUser(user);
                if (rslt != null) {
                    request.setAttribute("insert", "success");
                    request.setAttribute("Title", "User Registration");
                    request.setAttribute("Description", "<p class='text-success'>Thank you for registering with us!<br/>Please enter the verification number which we send for the email address you registered with before proceeding.</p>");
                    request.setAttribute("BtnValue", "verify user");
                    request.setAttribute("BtnPath", "#");
                    request.setAttribute("display", "display:none;");
                    request.setAttribute("VerificationInput", "<div class=\"span6\">\n" +
"                        <form class=\"form-search\" action=\"userVerification\" name=\"veriForm\">\n" +
"                            <p>Please enter the verification code below.</p>\n" +
"                            <input name=\"verificationCode\" type=\"text\" class=\"input-medium search-query\">\n" +
"                            <button type=\"submit\" class=\"btn btn-primary\">Verify</button>\n" +
"                        </form>\n" +
"                    </div>");

                    Record newrec = new Record();
                    newrec.setRECID(key.generateNewKey());
                    if (!USID.equals("0")) {
                        newrec.setUSID(Long.parseLong(USID));
                    } else {
                        newrec.setUSID(user.getUSID());
                    }
                    newrec.setREFID(verificationKey);
                    newrec.setTask("Insert");
                    newrec.setDatetime(new Timestamp(date.getTime()).toString());
                    newrec.insertRecordStatus(newrec);

                    String message = "Hi "+user.getFname()+" "+ user.getLname()+",<br><br>"
                            + "Thank you for registering with TRS-Srilanka.com.<br>"
                            + "To activate your account please copy the verification code given below and validate your account in TRS-SriLanka verification page.<br><br>"
                            + "<i>Verification code : " + verificationKey + "</i><br><br>"
                            + "Thank you!<br><br>"
                            + "Regards<br>"
                            + "<b>Administration</b><br>"
                            + "TRS-SriLanka.com";
                    SendEmails mail = new SendEmails();
                    mail.sendMail("tistus@gmail.com", "shehanproductions@ymail.com", "TRS-SriLanka - User Registration", message);
                } else {
                    request.setAttribute("insert", "error");
                    request.setAttribute("Title", "User Registration");
                    request.setAttribute("Description", "<p class='text-error'>There was an error adding the registering your user information.<br/>Please try again soon.</p>");
                    request.setAttribute("BtnValue", "Try Again");
                    request.setAttribute("BtnPath", "create_account.jsp");
                    request.setAttribute("display", "display:none;");
                }
                request.getRequestDispatcher("commonresult.jsp").forward(request, response);
                response.sendRedirect("commonresult.jsp");
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
