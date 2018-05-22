<!DOCTYPE html>
<html>
<head>
<title>个人主页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/bootstrap1.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style1.css" type="text/css" rel="stylesheet" media="all">
<!-- //Custom Theme files -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script> 
<!-- //js -->
<!-- font-awesome icons -->
<link href="css/font-awesome1.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- start-smooth-scrolling-->
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
<!--//end-smooth-scrolling-->	
</head>
<body>
	<!--banner-->
	<div class="banner">
		<div class="header"><!--header-->
			<div class="container">		
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1 class="navbar-brand"><a  href="index.html">JavaWeb小组</a></h1>
					</div>
					<div class="box">
						<div class="container-4">
							<form>
								<input type="search" id="search" placeholder="Search..." />
								<button class="icon"><i class="fa fa-search"></i></button>
							</form>
						</div>
					</div>
					<!--navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right cl-effect-4">
							
							<li class=""><a href="pro.html">我最程序员</a></li>
							<li><a href="nonpro.html">我最不程序猿</a></li>
							<li><a href="delete.html">我的所有发布</a></li>
                            <li><a href="#" class="active dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">个人设置 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a class="hvr-bounce-to-bottom" href="codes.html">编辑个人信息</a></li>
                                    <li><a class="hvr-bounce-to-bottom" href="contact.html">动态管理</a></li>
									<li><a class="hvr-bounce-to-bottom" href="contact.html">修改密码</a></li>
									<li><a class="hvr-bounce-to-bottom" href="index.html">退出登录</a></li>      
								</ul>
							</li>
						</ul>	
						<div class="clearfix"> </div>	
					</div>
                    
                    
				</nav>
			</div>
		</div>
		<!--//header-->
		<!--banner-text-->
		<div style="color: white" class="banner-text">
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;风里雨里<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们在这里等你</h2>
			<a class="hvr-bounce-to-right" href="#">马上开始</a>
		</div>
		<!--//banner-text-->
	</div>
	<!--//banner-->
	<!--banner-bottom-->
	
	<!--//banner-bottom-->
	<!--welcome-->
	
	<!--background-shape-->
	<div class="background-shape">
        <a style="visibility: hidden">test</a>
	</div>
	<!--background-shape-->
	<!--domain-->

	<!--//domain-->
	<!--background-shape-->
	<div class="background-shape color2">
	</div>
	<!--background-shape-->
	<!--about-team-->
	
	<!--//about-team-->
	<!--background-shape-->
	<div class="background-shape">
	</div>

	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap1.js"></script>
</body>
</html>