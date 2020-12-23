package UserServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.QueryUserDao;
import UserBean.UserBean;
@WebServlet("/QueryUserServlet")
public class QueryUserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		QueryUserDao queryUserDao = new QueryUserDao();
		
		
		List<UserBean> userList = queryUserDao.getUserInfo();
		
		
		request.setAttribute("userList", userList);
		
		
		request.getRequestDispatcher("/UserList.jsp").forward(request, response);
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

