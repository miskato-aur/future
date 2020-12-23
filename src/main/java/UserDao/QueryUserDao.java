package UserDao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Utils.JDBCutilsPlus;
import UserBean.UserBean;

public class QueryUserDao {
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	public List<UserBean> getUserInfo(){		
		List<UserBean> userList = new ArrayList<UserBean>();
		try {
			
			conn = JDBCutilsPlus.getConnection();
			
			stmt = conn.createStatement();
			
			String sql = "select * from  users ";
			
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
