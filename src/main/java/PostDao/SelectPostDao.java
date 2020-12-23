package PostDao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Utils.JDBCutilsPlus;
import PostBean.PostBean;

public class SelectPostDao {
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	public List<PostBean> getPostInfo(){		
		List<PostBean> PostList = new ArrayList<PostBean>();
		try {
			
			conn = JDBCutilsPlus.getConnection();
			
			stmt = conn.createStatement();
			
			String sql = "select * from  post ";
			
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()){
				String Uname = rs.getString("Uname");
				String Pcontent = rs.getString("Pcontent");
				String Ptitle = rs.getString("Ptitle");
				String Ptime = rs.getString("Ptime");
				PostBean post = new PostBean();
				post.setUname(Uname);
				post.setPcontent(Pcontent);
				post.setPtitle(Ptitle);
				post.setPtime(Ptime);
				PostList.add(post);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			JDBCutilsPlus.release(stmt, conn, rs);
		}
       return PostList;
	}

}

