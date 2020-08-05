package pl.coderslab.users;

import pl.coderslab.utils.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/users/delete")
public class UserDelete extends HttpServlet {
        protected void doGet (HttpServletRequest request, HttpServletResponse response) throws
        ServletException, IOException {
            try {
                UserDao userDao = new UserDao();
                userDao.delete(Integer.parseInt(request.getParameter("id")));
            } catch (Exception e) {
                e.printStackTrace();
            }

            response.sendRedirect(request.getContextPath() + "/users/list");
        }

}




