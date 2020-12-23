package UserDao;

import java.sql.Connection;
import java.sql.Statement;
import Utils.JDBCutilsPlus;
public class UpdateUserDao {
	Connection conn = null;
	Statement stmt = null;


	public void UpdateUserInfo(String username,String sign,String Oname){
		try {
			
			conn = JDBCutilsPlus.getConnection();
			
			stmt = conn.createStatement();
			
			String sql1 = "update  users set Uname='"+username+"' where Uname='"+Oname+"'";
			String sql2 = "update  users set Usign='"+sign+"' where Uname='"+Oname+"'";
			
			
		    int num1 = stmt.executeUpdate(sql1);
		    int num2 = stmt.executeUpdate(sql2);
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			JDBCutilsPlus.release(stmt, conn);
		}
      
	}
	//�ֲ�����
	public static void main(String args[]) throws Exception{
		
	}
}


