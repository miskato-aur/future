<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
</head>
<body>
<% String name=request.getParameter("name");  %>

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
                    <h1><a href="#"><span>Write </span>Center</a></h1>
                </div>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                <nav class="cl-effect-5" id="cl-effect-5">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#"><span data-hover="Home">Home</span></a></li>

                        <!-- <li><a href="#about" class="scroll"><span data-hover="About">About</span></a></li>
                        <li><a href="#services" class="scroll"><span data-hover="Services">Services</span></a></li> -->
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
</div>

<div class="talkcenter2 ">
    <div class="white_mu2 ">
        <div class="mail" id="mail">
            <div class="container">

                <div class="w3_mail_grids">
                    <form action="/InsertPostServlet" method="post">
                        <div class="wirteContiner">
                            <div class="col-md-6 w3_agile_mail_grid" style="float: none;">
                                <span class="input input--ichiro  ">
                                    <input name="Ptitle" class="input__field input__field--ichiro" type="text" id="input-27" placeholder=" " required="">
                                    <label class="input__label input__label--ichiro" for="input-27">
                                        <span class="input__label-content input__label-content--ichiro">话题名</span>
                                    </label>
                                </span>
                                <input name="name" type="hidden"  value="<%=name %>" >

                            </div>
                            <div class="col-md-6 w3_agile_mail_grid poss">
                                <textarea name="Pcontent" placeholder="write your content!" required=""></textarea>
                                <input type="submit" value="Submit">
                            </div>
                            <div class="clearfix"> </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>
