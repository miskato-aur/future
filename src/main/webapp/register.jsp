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
    <link
            href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
            rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/lightGallery.css" type="text/css" media="all" />
    <link rel="stylesheet" href="./css/register.css"/>
</head>

<body>
<div class="header" style="background-color:#0f80eb ; ">
    <div class="w3layouts_header_left">
        <div class="top-nav-text" ">
        <p style="color: white;">Call Us : <span class="call"  style="color: white;">15109500848</span></p>
        <p  style="color: white;">Email Us : <span class="mail"  style="color: white;"><a href="#"  style="color: white;">1635633816@qq.com</a></span></p>
    </div>
</div>


<div class="clearfix"> </div>
</div>
<div class="titletop"></div>
<div class="title_line">
    <span class="tit" style="font-size: 30px;" >注册</span>
</div>

<div class="registerContiner">
    <form  class="formCon" action="InsertUserServlet">
        <div class="uname">
            <input  class="inputname" type="text" placeholder="用户名" name="Uname">
        </div>
        <div class="hidd"></div>

        <div class="uname">
            <input  class="inputname" type="text" placeholder="密码" name="psd">
        </div>
        <div class="hidd"></div>
        <div class="uname">
            <button class="subm">注册</button>
        </div>
        <div class="uname">
            <span   style=" color: white;position: relative;left: 256px; top: 2px; "><a href=" ">已有账户，去登陆</a></span>
        </div>



    </form>



</div>
<div class="w3l_footer" >
    <div class="container">

        <div class="w3ls_footer_grids">

            <div class="w3ls_footer_grid">
                <div class="col-md-4 w3ls_footer_grid_left">
                    <div class="w3ls_footer_grid_leftl">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                    </div>
                    <div class="w3ls_footer_grid_leftr">
                        <h4>Location</h4>
                        <p></p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-4 w3ls_footer_grid_left">
                    <div class="w3ls_footer_grid_leftl">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                    </div>
                    <div class="w3ls_footer_grid_leftr">
                        <h4>Email</h4>
                        <a href="""></a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-4 w3ls_footer_grid_left">
                    <div class="w3ls_footer_grid_leftl">
                        <i class="fa fa-phone" aria-hidden="true"></i>
                    </div>
                    <div class="w3ls_footer_grid_leftr">
                        <h4>Call Us</h4>
                        <p></p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <div class="w3l_footer_pos">

    </div>
</div>




</body>

</html>