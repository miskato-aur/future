package UserServlet;

import Utils.JDBCutilsPlus;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "loginServlet",value = "/LoginUserServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        System.out.print("wdadad");

        try{
            conn = JDBCutilsPlus.getConnection();

            stmt = conn.createStatement();

            String username = request.getParameter("Uname");

            String psd = request.getParameter("psd");

            String sql = "select Uname from users where Uname='"+username+"'";
            rs= stmt.executeQuery(sql);
            if(rs.next()){
                String sql2 = "select password from users where Uname='"+username+"' and password='"+psd+"'";
                rs= stmt.executeQuery(sql2);
                if(rs.next()){
                    request.getRequestDispatcher("/Loginindex.jsp").forward(request, response);
                }else{
                    System.out.println("�������");
                }
            }
            else{
                System.out.println("��½ʧ��");
            }
        }catch (Exception e) {
            // TODO: handle exception
        }
    }
}
