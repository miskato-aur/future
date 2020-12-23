package UserServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UserDao.UpdatePsdDao;
@WebServlet("/UpdatePsdServlet")
public class UpdatePsdServlet extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String psd = request.getParameter("psd");
		String Nname = request.getParameter("name");

		
		UpdatePsdDao UpdatePsdDao = new UpdatePsdDao();
		UpdatePsdDao.UpdatePsdInfo(Nname,psd);

		request.getRequestDispatcher("index.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

