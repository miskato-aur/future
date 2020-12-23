package Utils;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCutilsPlus {
    private static final String driverClassName;
    private static final String url;
    private static final String user;
    private static final String password;

    static{
        driverClassName="com.mysql.jdbc.Driver";
        url ="jdbc:mysql://8.131.240.18:3307/furpal";
        user="root";
        password="123456";
    }
    public static void main(String[] args) {
        // TODO Auto-generated method stub

    }
    public static void LoadDriver(){
        try{
            Class.forName(driverClassName);
        }catch(Exception e){
            e.printStackTrace();
        }

    }
    public static Connection getConnection(){
        Connection conn=null;
        try{
            LoadDriver();
            conn =  DriverManager.getConnection(url, user, password);
        }catch(Exception e){
            e.printStackTrace();
        }
        return conn;
    }
    public static void release(Statement stmt,Connection conn){
        if(stmt != null){
            try{
                stmt.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        if(conn != null){
            try{
                conn.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }
    public static void release(Statement stmt,Connection conn,ResultSet rs){
        if(stmt != null){
            try{
                stmt.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        if(conn != null){
            try{
                conn.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        if(rs != null){
            try{
                rs.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }


    }
}

