<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.List,UserBean.UserBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>personal center</title>
    <link href="http://fonts.googleapis.com/css?family=Questrial" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Jura:300,400,500,600" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="./css/login.css">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/lightGallery.css" type="text/css" media="all" />
    <link rel="stylesheet" href="./css/myselfcss.css">
</head>
<body>
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
                    <h1><a href="#"><span>personal </span>Center</a></h1>
                </div>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                <nav class="cl-effect-5" id="cl-effect-5">
                    <ul class="nav navbar-nav">
                        <!-- 这段需要跳转到loginSuccess的主页面 -->

                        <!--  -->

                        <%
                            List<UserBean>  userList = (List<UserBean>)request.getAttribute("userList");
                            for(int i= 0 ; i < userList.size() ; i++){
                        %>						<li class=""><a href="Loginindex.jsp?Uname=<%=userList.get(i).getUname()%>"><span data-hover="Home">Home</span></a></li>
                        <li><a href="write.jsp?name=<%=userList.get(i).getUname()%>" class="scroll"><span data-hover="发帖">发帖</span></a></li>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
</div>

<div class="selfContiner">
    <div class="selftop">
        <div class="head_image">
            <a></a>
        </div>

        <div class="head_right">
            <div class="self">
                <span style="display: block; float: right;width: 60px;height: 25px;background-color: #4db3ff;color: white;"><a href="password.jsp?name=<%=userList.get(i).getUname()%>&sign=<%=userList.get(i).getUsign()%>" style="color: white;">修改密码</a></span>
                <h1><%=userList.get(i).getUname()%></h1><span>正式会员</span>
                <h2 class="bod">LV3</h2>
                <h3 class="bod"><%=userList.get(i).getUsign()%></h3>
            </div>
        </div>
    </div>

    <div class="selfcenter">
        <div class="centertop">
            <span class="a"></span>
            <span class="b">我的信息</span>
        </div>
        <form action="UpdateUserServlet">
            <div class="centerbody">
                <div class="name">昵称:
                    <input class="uinput" type="text" placeholder="设置您的昵称- ( ゜- ゜)つロ" value="<%=userList.get(i).getUname()%>" name="Nname"/>
                </div>

                <input  type="hidden"  value="<%=userList.get(i).getUname()%>" name="Oname"/>


                <div class="name">UID:<%=userList.get(i).getUid()%>

                </div>

                <div class="name">个签:
                    <input class="luinput" type="text" placeholder="设置您的签名- ( ゜- ゜)つロ" value="<%=userList.get(i).getUsign()%>" name="Nsign"/>
                </div>

                <div class="">
                    <button class="sub">保存</button>
                </div>


            </div>

    </div>
    </form>
    <%
        }
    %>


</div>




</body>
</html>