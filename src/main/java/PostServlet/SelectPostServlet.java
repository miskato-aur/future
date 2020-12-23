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
@WebServlet("/SelectPostServlet")
public class SelectPostServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String Uname=(String)session.getAttribute("name");
		System.out.println(Uname);
		
		SelectPostDao queryPostDao = new SelectPostDao();
	
		List<PostBean> postList = queryPostDao.getPostInfo();
		
		
		request.setAttribute("postList", postList);
		
		
		request.getRequestDispatcher("/talk.jsp").forward(request, response);
		response.sendRedirect("/talk.jsp?Uname="+Uname+"");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

