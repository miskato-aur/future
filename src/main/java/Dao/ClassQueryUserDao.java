package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import user.User;
import utils.JDBCUtilsPlus;

public class ClassQueryUserDao {
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;



    //声明一个方法，负责去数据库中查询数据的
    public List<User> getUserInfo(){
        //确定数组的空间长度
        //Object obj = new Object[];

        //换集合去作为返回值类型
        List<User> userList = new ArrayList<User>();//存储数据的类型  每一条数据确定类型  Object pjo 持久化对象

        try {
            //获取JDBC的基本信息
            conn = JDBCUtilsPlus.getConnection();//获取舞动连接
            //依据数据库连接conn创建Sql语句执行对象
            stmt = conn.createStatement();
            //声明Sql语句
            String sql = "select * from users";
            //将Sql语句送入数据库中执行
            rs = stmt.executeQuery(sql);

            //从结果集获取数据
            while(rs.next()){
                int id = rs.getInt("Uid");
                String username = rs.getString("Uname");
                String info = rs.getString("Usign");

                //打印输出获取的记录 测试是否查询成功
                //System.out.println(id+" "+username+" "+password+" "+age);
                User user = new User();//一条数据
                //将查询出来的各个字段住转换为对象进行存储，方便利用面向对象的思维去管理
                user.setId(id);
                user.setUsername(username);
                user.setInfo(info);
                //形成了一条完整的记录
                //把形成的记录加入到集合中
                userList.add(user);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }finally {
            JDBCUtilsPlus.release(stmt, conn, rs);
        }
        return userList;
    }
    //局部测试
    public static void main(String args[]) throws Exception{
        ClassQueryUserDao queryUserDao = new ClassQueryUserDao();
        List<User> userList = queryUserDao.getUserInfo();
        for(User user : userList){
            System.out.println(user);
        }
    }
}
