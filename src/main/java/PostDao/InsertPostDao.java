package PostDao;

import java.sql.Connection;
import java.sql.Statement;
import Utils.JDBCutilsPlus;

public class InsertPostDao {
	Connection conn = null;
	Statement stmt = null;


	public void insertPostInfoById(String name,String Pcontent,String Ptitle){
		try {
			
			conn = JDBCutilsPlus.getConnection();
			
			stmt = conn.createStatement();
			
			
			String sql = "insert into post (Uname,Pcontent,Ptitle,Ptime) values('"+name+"','"+Pcontent+"','"+Ptitle+"',utc_timestamp)";
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

