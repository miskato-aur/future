<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <title>主页</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- gallery -->
    <link rel="stylesheet" href="css/lightGallery.css" type="text/css" media="all" />
    <!-- //gallery -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">

    <!-- //font-awesome icons -->
    <link href="http://fonts.googleapis.com/css?family=Questrial" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Jura:300,400,500,600" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="./css/login.css">
    <link rel="stylesheet" href="./css/login1.css">

    <script type="text/javascript">
        function showLogin()
        {
            login.style.display = "block";
        }

    </script>
        <style >
            .box111{

                width: 400px;
                height: 100px;
                background-image: linear-gradient(to right,#03a9f4,#f441a5,#ffeb3b,#09a8f4);
                border-radius: 50px;
                position: absolute;
                right: 0;
                top: 0;
                left: 0;
                bottom: 0;
                margin:auto;
                background-size: 400%;
                z-index:1;
                animation: sun 8s infinite;
            }

            .box111:hover{
                animation: sun 8s infinite;
            }

            .box111::before{
                content: '';
                position: absolute;
                top: -5px;
                bottom: -5px;
                left: -5px;
                right: -5px;
                border-radius: 50px;
                background-image: linear-gradient(to right,#03a9f4,#f441a5,#ffeb3b,#09a8f4);
                background-size: 400%;
                z-index:-1;
                filter: blur(20px);
            }

            .box111:hover::before{
                animation: sun 8s infinite;
            }

            @keyframes sun {
                100%{
                    background-position: -400% 0;
                }
            }


            .ppp{
                display: block;
                height: 50px;
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                margin: auto;
                font-size: 30px;
                font-weight:bold;
                line-height: 50px;
                text-align: center;
                color: white;
                /* font-family: '华文彩云';
                font-weight: 10px; */

            }





        </style>


</head>


<body>
<!-- login -->





<div id="login"  style="width:609px;height:209px">
    <div class="box111">
        <p class="ppp">欢迎登陆</p>

    </div>








    <a class="exit" href="javascript:login.style.display = 'none';forbid.style.visibility = 'hidden'; void(0);" style="font-size: 45px;float: right;">❌</a>

</div>












<% String Nname=request.getParameter("Uname");
    System.out.println(Nname); %>


<!-- header -->
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
        <a href="index.jsp">退出登录</a>
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
                    <h1><a href="index.html"><span>Future</span> palette</a></h1>
                </div>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                <nav class="cl-effect-5" id="cl-effect-5">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#"><span data-hover="Home">Home</span></a></li>

                        <li><a href="#about" class="scroll"><span data-hover="About">About</span></a></li>
                        <li><a href="#services" class="scroll"><span data-hover="Services">Services</span></a></li>
                        <li><a href="#work" class="scroll"><span data-hover="图库">图库</span></a></li>
                        <li><a href="SelectUserServlet?Nname=<%=Nname%>"  class=""><span data-hover="个人信息">个人信息</span></a></li>
                        <li><a href="SelectPostServlet?Uname=<%=Nname %>" class=""><span data-hover="论坛">论坛</span></a></li>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
</div>
<!-- //header -->
<!-- banner -->
<div class="banner">
    <!--Slider-->
    <div class="slider">
        <div class="callbacks_container">
            <ul class="rslides" id="slider3">
                <li>
                    <div class="slider-img">
                        <img src="images/banner1.jpg" class="img-responsive" alt="Fantasy World">
                    </div>
                    <div class="slider-info">

                        <h4>A sleeping girl </h4>
                        <p>World building is component of Future palette </p>
                        <a href="#about" class="hvr-shutter-in-horizontal scroll">Read More</a>
                    </div>
                </li>
                <li>
                    <div class="slider-img">
                        <img src="images/banner2.jpg" class="img-responsive" alt="Fantasy World">
                    </div>
                    <div class="slider-info">

                        <h4>Night fell</h4>
                        <p>World building is component of Future palette  </p>
                        <a href="#about" class="hvr-shutter-in-horizontal scroll">Read More</a>
                    </div>
                </li>
                <li>
                    <div class="slider-img">
                        <img src="images/banner3.jpg" class="img-responsive" alt="Fantasy World">
                    </div>
                    <div class="slider-info">

                        <h4>New  World</h4>
                        <p>World building is component of Future palette  </p>
                        <a href="#about" class="hvr-shutter-in-horizontal scroll">了解更多</a>
                    </div>
                </li>


            </ul>

        </div>
        <div class="clearfix"></div>
    </div>
    <!--//Slider-->
</div>
<!-- //banner -->
<!-- Modal1 -->
<div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4>Contracts</h4>
                <img src="images/ab.jpg" alt=" " class="img-responsive">
                <h5>Donec lobortis pharetra dolor</h5>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, rds which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
            </div>
        </div>
    </div>
</div>
<!-- //Modal1 -->

<!-- about -->
<div class="about" id="about">
    <div class="container">
        <div class="col-md-4 agileits_about_left">
            <h3 class="w3l_head">关于我们</h3>
            <p class="w3ls_head_para">who we are</p>
        </div>
        <div class="agileits_banner_bottom_grids">
            <div class="col-md-6 agileits_banner_bottom_grid_l">
                <h4>General introduction of the game</h4>
                <p><i>这是一款模拟养成类文字冒险游戏，采用基于python语言的renpy引擎制作游戏的主题是大学的迷茫与目标。
                    游戏通过高度还原大学的各种学习氛围和日常活动，让玩家体验到一个比较真实的校园生活</i>在游戏中，玩家可以以小游戏的形式进行课程的学习，以此来评判每门课程的期末成绩。游戏还设置了身体状态系统，玩家需要在学习的同时兼顾自己的学习压力和身体素质的培养。同时还加入了有趣的特殊情景对话来弥补空闲时间的空缺。围绕游戏的主题，一共创建了两个女主角，她们都在大学中过着迷茫没有目标的生活，而游戏的最终目的，就是通过玩家的各种选择和女主角一起完成最终的任务。游戏有多种结局，取决于玩家平时的学习成绩和表现，以及在主线剧情事件发生时选择的正确方向</p>
            </div>
            <div class="col-md-6 agileits_banner_bottom_grid_r">
                <div class="agileits_banner_btm_grid_r">
                    <img src="images/ab.jpg" alt=" " class="img-responsive">
                    <div class="agileits_banner_btm_grid_r_pos ">
                        <img class="pos" src="images/ab1.jpg" alt=" " class="img-responsive">
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //about-bottom -->
<!-- services -->
<div class="services" id="services">
    <h3 class="w3l_head w3l_head1">Services</h3>
    <p class="w3ls_head_para w3ls_head_para1">View Our Services</p>
    <div class="services-agile-w3l">
        <div class="col-md-3 services-gd text-center">
            <div class="hi-icon-wrap hi-icon-effect-9 hi-icon-effect-9a">
                <a href="#" class="hi-icon"><img src="images/s1.png" alt=" " /></a>
            </div>
            <h4>Service 1</h4>
            <p>Lorem Ipsum</p>
        </div>

        <div class="col-md-3 services-gd text-center">
            <div class="hi-icon-wrap hi-icon-effect-9 hi-icon-effect-9a">
                <a href="#" class="hi-icon"><img src="images/s2.png" alt=" " /></a>
            </div>
            <h4>Service 2</h4>
            <p>Lorem Ipsum</p>
        </div>
        <div class="col-md-3 services-gd text-center">
            <div class="hi-icon-wrap hi-icon-effect-9 hi-icon-effect-9a">
                <a href="#" class="hi-icon"><img src="images/s3.png" alt=" " /></a>
            </div>
            <h4>Service 3</h4>
            <p>Lorem Ipsum</p>
        </div>
        <div class="col-md-3 services-gd text-center">
            <div class="hi-icon-wrap hi-icon-effect-9 hi-icon-effect-9a">
                <a href="#" class="hi-icon"><img src="images/s4.png" alt=" " /></a>
            </div>
            <h4>Service 4</h4>
            <p>Lorem Ipsum</p>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //services -->

<!-- gallery -->
<div class="team-bottom" id="work">
    <div class="container">
        <h3 class="w3l_head w3l_head1">Latest Gallery</h3>
        <p class="w3ls_head_para w3ls_head_para1">最新图库</p>
        <div class="w3layouts_gallery_grids">
            <ul class="w3l_gallery_grid" id="lightGallery">
                <li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/ab.jpg" data-responsive-src="images/8.jpg">
                    <div class="w3layouts_gallery_grid1 box">
                        <a href="#">
                            <img src="images/ab.jpg" alt=" " class="img-responsive" />
                            <div class="overbox">
                                <h4 class="title overtext"> Fantasy World</h4>

                            </div>
                        </a>
                    </div>
                </li>
                <li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g1.jpg" data-responsive-src="images/9.jpg">
                    <div class="w3layouts_gallery_grid1 box">
                        <a href="#">
                            <img src="images/g1.jpg" alt=" " class="img-responsive" />
                            <div class="overbox">
                                <h4 class="title overtext"> Fantasy World</h4>

                            </div>
                        </a>
                    </div>
                </li>
                <li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g2.jpg" data-responsive-src="images/10.jpg">
                    <div class="w3layouts_gallery_grid1 box">
                        <a href="#">
                            <img src="images/g2.jpg" alt=" " class="img-responsive" />
                            <div class="overbox">
                                <h4 class="title overtext"> Fantasy World</h4>

                            </div>
                        </a>
                    </div>
                </li>
                <li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g3.jpg" data-responsive-src="images/11.jpg">
                    <div class="w3layouts_gallery_grid1 box">
                        <a href="#">
                            <img src="images/g3.jpg" alt=" " class="img-responsive" />
                            <div class="overbox">
                                <h4 class="title overtext"> Fantasy World</h4>

                            </div>
                        </a>
                    </div>
                </li>
                <li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g4.jpg" data-responsive-src="images/12.jpg">
                    <div class="w3layouts_gallery_grid1 box">
                        <a href="#">
                            <img src="images/g4.jpg" alt=" " class="img-responsive" />
                            <div class="overbox">
                                <h4 class="title overtext"> Fantasy World</h4>

                            </div>
                        </a>
                    </div>
                </li>
                <li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g5.jpg" data-responsive-src="images/13.jpg">
                    <div class="w3layouts_gallery_grid1 box">
                        <a href="#">
                            <img src="images/g5.jpg" alt=" " class="img-responsive" />
                            <div class="overbox">
                                <h4 class="title overtext"> Fantasy World</h4>

                            </div>
                        </a>
                    </div>
                </li>
                <li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g8.jpg" data-responsive-src="images/14.jpg">
                    <div class="w3layouts_gallery_grid1 box">
                        <a href="#">
                            <img src="images/g8.jpg" alt=" " class="img-responsive" />
                            <div class="overbox">
                                <h4 class="title overtext"> Fantasy World</h4>

                            </div>
                        </a>
                    </div>
                </li>
                <li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g6.jpg" data-responsive-src="images/15.jpg">
                    <div class="w3layouts_gallery_grid1 box">
                        <a href="#">
                            <img src="images/g6.jpg" alt=" " class="img-responsive" />
                            <div class="overbox">
                                <h4 class="title overtext"> Fantasy World</h4>

                            </div>
                        </a>
                    </div>
                </li>
                <li data-title="Games" data-desc="Lorem Ipsum is simply dummy text of the printing." data-src="images/g7.jpg" data-responsive-src="images/16.jpg">
                    <div class="w3layouts_gallery_grid1 box">
                        <a href="#">
                            <img src="images/g7.jpg" alt=" " class="img-responsive" />
                            <div class="overbox">
                                <h4 class="title overtext"> Fantasy World</h4>

                            </div>
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- //gallery -->
<!-- projects -->
<div class="projects" id="projects">
    <div class="container">
        <div class="port-head">
            <h3 class="w3l_head w3l_head1">最新插画</h3>
            <p class="w3ls_head_para w3ls_head_para1">Latest illustrations</p>
        </div>
    </div>
    <div class="projects-grids">
        <div class="sreen-gallery-cursual">

            <div id="owl-demo" class="owl-carousel owl-theme">
                <div class="item">
                    <div class="projects-agile-grid-info">
                        <img src="images/s1.jpg" alt="" />
                        <div class="projects-grid-caption">

                            <h4>Fantasy World</h4>
                            <p>Lorem ipsum</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="projects-agile-grid-info">
                        <img src="images/s2.jpg" alt="" />
                        <div class="projects-grid-caption">

                            <h4>Fantasy World</h4>
                            <p>Lorem ipsum</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="projects-agile-grid-info">
                        <img src="images/s3.jpg" alt="" />
                        <div class="projects-grid-caption">

                            <h4>Fantasy World</h4>
                            <p>Lorem ipsum</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="projects-agile-grid-info">
                        <img src="images/s4.jpg" alt="" />
                        <div class="projects-grid-caption">

                            <h4>Fantasy World</h4>
                            <p>Lorem ipsum</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="projects-agile-grid-info">
                        <img src="images/s5.jpg" alt="" />
                        <div class="projects-grid-caption">

                            <h4>Fantasy World</h4>
                            <p>Lorem ipsum</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="projects-agile-grid-info">
                        <img src="images/s6.jpg" alt="" />
                        <div class="projects-grid-caption">

                            <h4>Fantasy World</h4>
                            <p>Lorem ipsum</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="projects-agile-grid-info">
                        <img src="images/s7.jpg" alt="" />
                        <div class="projects-grid-caption">

                            <h4>Fantasy World</h4>
                            <p>Lorem ipsum</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="projects-agile-grid-info">
                        <img src="images/s1.jpg" alt="" />
                        <div class="projects-grid-caption">
                            <h4>Fantasy World</h4>
                            <p>Lorem ipsum</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>





<!-- footer -->
<div class="w3l_footer">
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
<!-- //footer -->

<!--banner Slider starts Here-->
<script src="js/jquery-2.2.3.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
        // Slideshow 4
        $("#slider3").responsiveSlides({
            auto: true,
            pager:false,
            nav:true,
            speed: 500,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });

    });
</script>
<!-- js -->
<!-- start-smoth-scrolling -->
<script src="js/lightGallery.js"></script>
<script>
    $(document).ready(function() {
        $("#lightGallery").lightGallery({
            mode:"fade",
            speed:800,
            caption:true,
            desc:true,
            mobileSrc:true
        });
    });
</script>

<script src="js/owl.carousel.js"></script>
<link href="css/owl.theme.css" rel="stylesheet">
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
<script>
    $(document).ready(function() {
        $("#owl-demo").owlCarousel({

            autoPlay: 3000, //Set AutoPlay to 3 seconds
            autoPlay : true,
            navigation :true,

            items : 4,
            itemsDesktop : [640,5],
            itemsDesktopSmall : [414,4]

        });

    });
</script>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->
<!-- //js -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->
</body>
</html>