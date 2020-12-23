<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.List,PostBean.PostBean,PostBean.CommentBean"
         import="java.sql.Connection,java.sql.ResultSet,java.sql.Statement,java.util.ArrayList,java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>talk</title>
    <link href="http://fonts.googleapis.com/css?family=Questrial" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Jura:300,400,500,600" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="./css/login.css">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/lightGallery.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/talkCen.css">
    <link rel="stylesheet" href="./css/myselfcss.css">
</head>
<body>
<% String Nname=request.getParameter("Uname");%>
<div class="header">
    <div class="w3layouts_header_left">
        <div class="top-nav-text">
            <p>Call Us : <span class="call">15109500848</span></p>
            <p>Email Us : <span class="mail"><a href="#">1635633816@qq.com</a></span></p>
        </div>
    </div>
    <div class="w3layouts_header_right">
        <form action="#" method="post">
            <input name="Search heare" type="search" placeholder="Search" required="">

            <input type="submit" value="">
        </form>
    </div>

    <div class="clearfix"> </div>
</div>
<div class="w3_navigation">
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="navbar-header navbar-left">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="w3_navigation_pos">
                    <h1><a href="#"><span>Forum </span>Center</a></h1>
                </div>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                <nav class="cl-effect-5" id="cl-effect-5">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="Loginindex.jsp?Uname=<%=Nname %>"><span data-hover="Home">Home</span></a></li>

                        <!-- <li><a href="#about" class="scroll"><span data-hover="About">About</span></a></li>
                        <li><a href="#services" class="scroll"><span data-hover="Services">Services</span></a></li> -->
                        <li><a href="SelectUserServlet?Nname=<%=Nname %>" class="scroll"><span data-hover="个人信息">个人信息</span></a></li>
                        <li><a ></a></li>
                        <li><a href="write.jsp?name=<%=Nname %>" class="scroll"><span data-hover="发帖">发帖</span></a></li>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
</div>
<!-- height: 1000px; -->
<div class="talkcenter clearfix">
    <div class="white_mu clearfix">
        <!-- 此处进行循环 -->
        <%
            List<PostBean>  postList = (List<PostBean>)request.getAttribute("postList");
            for(int i= postList.size()-1 ; i >=0 ; i--){
                String name=postList.get(i).getPtitle();
        %>

        <div class="user_input clearfix">
            <div class="input_top clearfix">
                <div class="user_ID ">
                    <a href=""></a>

                </div>

                <div class="user_title clearfix">
                    <p><%=postList.get(i).getUname()%></p>
                    <p class="card">lv6</p>


                </div>
            </div>

            <div class="input_center">
                <div class="content" style="font-family: '楷体'">
                    <h1><%=postList.get(i).getPtitle()%></h1><span><!--此处调用日期--><%=postList.get(i).getPtime()%></span>
                    <br><br>
                    <p><%=postList.get(i).getPcontent()%></p>
                </div>
                <br>
                <form action="InsertCommentServlet">
                    <div class="comment clearfix">
                        <div class="name npos">
                            <input name="Cmain"class="uinput "style="width:500px; " type="text" placeholder="写个评论吧- ( ゜- ゜)つロ"/>
                            <input name="title" type="hidden" value="<%=name %>">
                            <input name="Uname" type="hidden" value="<%=Nname %>">
                            <button class="comButton">评论</button>
                        </div>

                    </div>
                </form>>
                <%
                    List<CommentBean> commentList = new ArrayList<CommentBean>();
                    Connection con=null;
                    Statement stmt=null;
                    ResultSet rs=null;
                    try{

                        Class.forName("com.mysql.jdbc.Driver");
                        con=DriverManager.getConnection("jdbc:mysql://8.131.240.18:3307/furpal","root","123456");
                        stmt=con.createStatement();
                        String sql = "select * from  comment where Ptitle='"+name+"'";
                        rs = stmt.executeQuery(sql);
                        while(rs.next()){
                            String Uname = rs.getString("Uname");
                            String Cmain = rs.getString("Cmain");
                            String Ptitle = rs.getString("Ptitle");
                            CommentBean comment = new CommentBean();
                            comment.setUname(Uname);
                            comment.setCmain(Cmain);
                            comment.setPtitle(Ptitle);
                            commentList.add(comment);
                        }
                    } catch (Exception e) {
                        // TODO: handle exception
                    }
                %>
                <%
                    for(int j= 0 ; j < commentList.size() ; j++){
                %>
                <div class="communication clearfix">
                    <div class="c_name clearfix"><%=commentList.get(j).getUname()%></div>
                    <div class="c_content clearfix" ><%=commentList.get(j).getCmain()%></div>
                </div>

                <br>
                <%} %>
            </div>

            <!-- ⬆⬆⬆⬆ -->

        </div>

        <div class="user_input">

        </div>

        <%} %>







    </div>

    <div class=""></div>

</div>
</body>
</html>