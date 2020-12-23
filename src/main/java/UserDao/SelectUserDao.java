package UserDao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import UserBean.UserBean;
import Utils.JDBCutilsPlus;
public class SelectUserDao {
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	public List<UserBean> getUserInfo(String username){		
		List<UserBean> userList = new ArrayList<UserBean>();
		try {
			
			conn = JDBCutilsPlus.getConnection();
			
			stmt = conn.createStatement();
			
			String sql = "select * from  users where Uname='"+username+"' ";
			
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()){
				String Uname = rs.getString("Uname");
				String Uid = rs.getString("Uid");
				String password = rs.getString("password");
				String Usign = rs.getString("Usign");
				UserBean user = new UserBean();
				user.setUname(Uname);
				user.setUid(Uid);
				user.setPassword(password);
				user.setUsign(Usign);
				userList.add(user);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			JDBCutilsPlus.release(stmt, conn, rs);
		}
       return userList;
	}
}
