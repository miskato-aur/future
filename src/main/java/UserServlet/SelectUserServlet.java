package UserServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.SelectUserDao;
import UserBean.UserBean;
@WebServlet("/SelectUserServlet")
public class SelectUserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectUserDao selectUserDao = new SelectUserDao();
		String name=request.getParameter("Nname");
		
		List<UserBean> userList = selectUserDao.getUserInfo(name);
		
		
		request.setAttribute("userList", userList);
		
		
		request.getRequestDispatcher("/myself.jsp").forward(request, response);
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

