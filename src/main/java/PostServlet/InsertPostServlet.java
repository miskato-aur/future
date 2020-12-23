package PostServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import PostDao.InsertPostDao;
@WebServlet("/InsertPostServlet")
public class InsertPostServlet extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String name = request.getParameter("name");
		String Pcontent = new String(request.getParameter("Pcontent").getBytes("ISO-8859-1"),"UTF-8");
		String Ptitle = new String(request.getParameter("Ptitle").getBytes("ISO-8859-1"),"UTF-8");
	
		
		InsertPostDao insertPostDao = new InsertPostDao();
		insertPostDao.insertPostInfoById(name,Pcontent,Ptitle);
		HttpSession session=request.getSession();
		session.setAttribute("name",name);
		response.sendRedirect("/SelectPostServlet?Uname="+name+"");
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

