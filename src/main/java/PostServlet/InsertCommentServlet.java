package PostServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import PostDao.InsertCommentDao;
@WebServlet("/InsertCommentServlet")
public class InsertCommentServlet extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String Uname = request.getParameter("Uname");
		String Cmain = request.getParameter("Cmain");
		String title = request.getParameter("title");
	
		
		InsertCommentDao insertCommentDao = new InsertCommentDao();
		insertCommentDao.insertCommentInfoById(Uname,Cmain,title);

		request.getRequestDispatcher("SelectPostServlet").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

