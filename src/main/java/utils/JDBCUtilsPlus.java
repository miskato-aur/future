package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtilsPlus {
    private static final String driverClassName;
    private static final String url;
    private static final String username;
    private static final String password;

    static{
        driverClassName = "com.mysql.jdbc.Driver";
        url = "jdbc:mysql://8.131.240.18:3306/furpal";
        username = "db_student";
        password = "123456";
    }

    public static void loadDriver(){
        try {
            Class.forName(driverClassName);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    public static Connection getConnection(){
        Connection connecction = null;
        try {
            //调用封装好的加载驱动的方法
            loadDriver();
            //获得连接
            connecction = DriverManager.getConnection(url, username,password);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connecction;
    }

    public static void release(Statement stmt,Connection conn){

        if(stmt != null){
            try {
                stmt.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            stmt = null;
        }

        if(conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            conn = null;
        }
    }


    public static void release(Statement stmt,Connection conn,ResultSet rs){
        if(stmt != null){//资源不为空才去释放，这样在调用close()方法之前也能避免出现空指针异常，否则会因为对象为空，再去调用方法，会产生空指针异常的。
            try {
                stmt.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            stmt = null;//及时地告诉垃圾回收机制要将资源第一时间回收

        }
        if(conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            conn = null;
        }
        if(rs != null){
            try {
                rs.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            rs = null;
        }
    }
}
