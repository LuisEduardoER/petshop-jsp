/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import bean.User;
import dao.UserDao;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author QuyenPac
 */
public class loginExampleServlet extends HttpServlet {

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
            response.sendRedirect("userLogged.jsp"); //logged-in page      		
//            } else {
//                response.sendRedirect("invalidLogin.jsp"); //error page 
//            }
        } catch (Throwable theException) {
            System.out.println(theException);
        }
    }
}
