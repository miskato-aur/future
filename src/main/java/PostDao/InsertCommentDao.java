package PostDao;
import Utils.JDBCutilsPlus;
import java.sql.Connection;
import java.sql.Statement;


public class InsertCommentDao {
	Connection conn = null;
	Statement stmt = null;


	public void insertCommentInfoById(String Uname,String Cmain,String title){
		try {
			
			conn = JDBCutilsPlus.getConnection();
			
			stmt = conn.createStatement();
			
			
			String sql = "insert into comment (Uname,Ptitle,Cmain) values('"+Uname+"','"+title+"','"+Cmain+"')";
		    int num = stmt.executeUpdate(sql);
		    if(num>0){
		    	System.out.println("1");
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

