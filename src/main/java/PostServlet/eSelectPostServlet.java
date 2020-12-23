package PostServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import PostDao.SelectPostDao;
import PostBean.PostBean;
import PostBean.CommentBean;
@WebServlet("/eSelectPostServlet")
public class eSelectPostServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		SelectPostDao queryPostDao = new SelectPostDao();
	
		List<PostBean> postList = queryPostDao.getPostInfo();
		
		
		request.setAttribute("postList", postList);
		
		
		request.getRequestDispatcher("/ytalk.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

