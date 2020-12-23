package UserDao;

import java.sql.Connection;
import java.sql.Statement;
import Utils.JDBCutilsPlus;
public class UpdatePsdDao {
	Connection conn = null;
	Statement stmt = null;


	public void UpdatePsdInfo(String name,String psd){
		try {
			
			conn = JDBCutilsPlus.getConnection();
			
			stmt = conn.createStatement();
			
			String sql1 = "update  users set password='"+psd+"' where Uname='"+name+"'";
			
			
		    int num1 = stmt.executeUpdate(sql1);
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


