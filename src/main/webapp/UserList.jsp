<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.List,UserBean.UserBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>做数据显示的</title>
</head>
<body>
<p align="center">用户信息查询显示</p>
<a href="insertUserInfo.jsp">新增</a>
<hr>
<table border="1" width="400px" height="80px" align="center">
    <tr>
        <td>用户id</td>
        <td>用户名</td>
        <td>用户密码</td>
        <td>签名</td>
    </tr>
    <%
        List<UserBean>  userList = (List<UserBean>)request.getAttribute("userList");
        for(int i= 0 ; i < userList.size() ; i++){
    %>
    <tr>
        <td><%=userList.get(i).getUid()%></td>
        <td><%=userList.get(i).getUname()%></td>
        <td><%=userList.get(i).getPassword()%></td>
        <td><%=userList.get(i).getUsign()%></td>

            <%

	 }
	%>
</table>
</body>
</html>