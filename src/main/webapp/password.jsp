<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<% String name=request.getParameter("name");
    String sign=request.getParameter("sign");
    System.out.println(name); %>
<div class="header">
    <div class="w3layouts_header_left">
        <div class="top-nav-text">
            <p>Call Us : <span class="call">15109500848</span></p>
            <p>Email Us : <span class="mail"><a href="#">1635633816@qq.com</a></span></p>
        </div>
    </div>
    <div class="w3layouts_header_right">
    </div>
    <div class="login_button">
        <a href="javascript:showLogin();showForbid();void(0);">登录</a>
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
                        <li ><a >      </a></li>

                        <!-- <li><a href="#about" class="scroll"><span data-hover="About">About</span></a></li>
                        <li><a href="#services" class="scroll"><span data-hover="Services">Services</span></a></li> -->
                        <li><a >     </a></li>
                        <li><a >     </a></li>
                        <li><a >     </a></li>
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

                <h1><%=name %></h1><span>正式会员</span>
                <h2 class="bod">LV3</h2>
                <h3 class="bod">个签：<%=sign %></h3>
            </div>
        </div>
    </div>

    <div class="selfcenter">
        <div class="centertop">
            <span class="a"></span>
            <span class="b">我的信息</span>
        </div>
        <form action="UpdatePsdServlet">
            <div class="centerbody">
                <div class="name">新密码:
                    <input name="psd" class="uinput" type="text" placeholder="设置您的新密码- ( ゜- ゜)つロ"/>
                </div>
                <div class="name">名字:<%=name%>
                    <input name="name" class="uinput" type="hidden" value="<%=name %>" placeholder="设置您的新密码- ( ゜- ゜)つロ"/>
                </div>
                <div class="">
                    <button class="sub" type="submit">保存</button>
                </div>


            </div>
        </form>
    </div>




</div>




</body>
</html>