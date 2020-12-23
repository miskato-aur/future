package UserServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.UpdateUserDao;
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String name = request.getParameter("Nname");
		String sign = request.getParameter("Nsign");
		String Oname = request.getParameter("Oname");

		
		UpdateUserDao UpdateUserDao = new UpdateUserDao();
		UpdateUserDao.UpdateUserInfo(name,sign,Oname);

		request.getRequestDispatcher("SelectUserServlet").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

