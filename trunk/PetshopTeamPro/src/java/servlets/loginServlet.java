/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import bean.User;
import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author QuyenPac
 */
public class loginServlet extends HttpServlet {
    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
   
         public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, java.io.IOException {

        try {

            User user = new User();
            user.setUserName(request.getParameter("un"));
            user.setPassword(request.getParameter("pw"));

            user = UserDao.login(user);

//            if (user.isValid()) {

            HttpSession session = request.getSession(true);
            session.setAttribute("currentSessionUser", user);
            response.sendRedirect("index.jsp?login_ok=1"); //logged-in page      		
//            } else {
//                response.sendRedirect("invalidLogin.jsp"); //error page 
//            }
        } catch (Throwable theException) {
            System.out.println(theException);
        }
    }
    
}
