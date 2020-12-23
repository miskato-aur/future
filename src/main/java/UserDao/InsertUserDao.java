package UserDao;
import java.sql.Connection;
import java.sql.Statement;
import Utils.JDBCutilsPlus;

public class InsertUserDao {
	Connection conn = null;
	Statement stmt = null;


	public void insertUserInfoById(String username,String password){
		try {
			
			conn = JDBCutilsPlus.getConnection();
			
			stmt = conn.createStatement();
			
			
			String sql = "insert into users (Uname,Usign,password) values('"+username+"','this people left noting','"+password+"')";
		    int num = stmt.executeUpdate(sql);
			if(num>0){
				System.out.println(username+password);
			}
			else{
				System.out.println("ע��ʧ��");
			}
			
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

