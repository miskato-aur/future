package UserDao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import Utils.JDBCutilsPlus;
public class LoginUserDao {
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;


	public void loginUserInfoById(String username,String password){
		try {
			
			conn = JDBCutilsPlus.getConnection();
			
			stmt = conn.createStatement();
			
			
			String sql = "select Uname from users where Uname='"+username+"'";
		    rs= stmt.executeQuery(sql);
		    if(rs.next()){
		    	String sql2 = "select password from users where Uname='"+username+"' and password='"+password+"'";
		    	rs= stmt.executeQuery(sql2);
		    	if(rs.next()){
		    		
		    	}
		    }
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			JDBCutilsPlus.release(stmt, conn);
		}
      
	}
	public static void main(String args[]) throws Exception{
		
	}
}

