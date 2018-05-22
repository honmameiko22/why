 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.bean.*"%>
<%@page import="java.util.List" %>
<%@page import="com.exe.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Timeline - Free Responsive Template</title>
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="UTF-8">

        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/templatemo-style.css">
        <link rel="stylesheet" type="text/css" href="css/starability.css"/>

        <!-- JavaScripts -->
        <script src="js/vendor/jquery-1.10.2.min.js"></script>
        <script src="js/vendor/modernizr.min.js"></script>
        <script src="js/jquery-3.3.1.min.js"> </script>
        <script type="text/javascript">
		    function star(num, userid, textid) {
		    if(userid==null) alert("请先登录!");
		    else{
				var aj = $.ajax( {    
				    url:'StarServlet',// 跳转到 action    
				    data:'num='+num+'&userid='+userid+'&textid='+textid,
				    type:'post',       
				    dataType:'text',    
				    success:function(data) {    
				            alert("成功！");       
				     },    
				     error : function() {    
				          alert("异常！");    
				     }    
				});		    
			   }

			}
        </script>
</head>
<body>
    <header class="site-header" id="top">
        <nav class="navbar navbar-default navbar-fixed-top">
                    <div class="collapse navbar-collapse" id="main-menu">
                        <ul class="nav navbar-nav navbar-right">
                            <li><span></span><a href="Mainpage.html" class="home">首页</a></li>
                            <li><span></span><a href="#first-section" class="about">我最程序员</a></li>
                            <li><span></span><a href="#second-section" class="portfolio">我最不程序员</a></li>
                            <li><span></span><a href="Person.jsp" class="portfolio">个人中心</a></li>
                            <li><span></span><a href="#third-section" class="contact">意见反馈</a></li>
                            <li><p>&nbsp;&nbsp;&nbsp;</p></li>
                        </ul>
                    </div>
                </div> 
            </div>
        </nav>
    </header>

    <div id="big-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-xs-12">
                    <ul class="main-icons">
						<li><a href="#first-section"><i class="fa fa-bolt"></i>Code</a></li>
                        <li><a href="#second-section"><i class="fa fa-gamepad"></i>Game</a></li>                        
                    </ul>
                </div>
            </div>
        </div>               
    </div>

    
    <div id="first-section">
        <div class="heading">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                            <h2 class="header-section-title">我最程序员</h2>
                    </div> 
                </div>
            </div>
        </div>
    </div>

    <div id="first-section1">
        <div class="container">
            <div class="row">
                <div class="triangle"></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <section id="cd-timeline" class="cd-container">
 
 <%
 	myredis my=new myredis();
	Integer userid=(Integer)session.getAttribute("userid");
	String username=(String)session.getAttribute("username");
	System.out.println("id="+userid+"name="+username);
	ItemBean Item=new ItemBean();
	List<ItemBean> mybeans=Item.Load(1);
	int sz=mybeans.size();
	for(int i=0; i<sz; i++){
	 int textid=mybeans.get(i).getTextid();
 %>
 
                        <div class="cd-timeline-block">
                            <div class="cd-timeline-img cd-picture">
                                <img src="images/first-icon.png" alt="Picture">
                            </div>

                            <div class="cd-timeline-content service-box-content">
                                <h2><%out.println(mybeans.get(i).getOwenerName()); %></h2>
                                <p><%out.println(mybeans.get(i).getContent()); %></p>
                                <div>
                                	<div style="float:left; width:70%">
									  	<form>
										<fieldset class="starability-checkmark"> 
									
											  <input type="radio"   id="rate5-6" name="rating" value="5"/>
											  <label for="rate5-6" title="Amazing" onclick="star(5, <%=userid%>, <%=textid%>);">5 stars</label>
									
											  <input type="radio"   id="rate4-6" name="rating" value="4" />
											  <label for="rate4-6" title="Very good" onclick="star(4, <%=userid%>, <%=textid%>);">4 stars</label>
									
											  <input type="radio"   id="rate3-6" name="rating" value="3" />
											  <label for="rate3-6" title="Average" onclick="star(3, <%=userid%>, <%=textid%>);">3 stars</label>
									
											  <input type="radio"   id="rate2-6" name="rating" value="2" />
											  <label for="rate2-6" title="Not good" onclick="star(2, <%=userid%>, <%=textid%>);">2 stars</label>
									
											  <input type="radio"   id="rate1-6" name="rating" value="1" />
											  <label for="rate1-6" title="Terrible" onclick="star(1, <%=userid%>, <%=textid%>);">1 star</label>
											</fieldset>
										</form>
                                	</div>
                                	        
                                	<div style="float:right; width:30%">
                                	<br><br><br>
                                		 <p>总得分为  :<%out.println(mybeans.get(i).getStar()); %></p>
                                	</div>
                                </div>
							</div>
                        </div>
                        <%} %>
                        </div>        
                    </section>
                </div>
            </div>
        </div>
    </div>

     <div id="cta">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4>程序员≠</h4>
                    <p>C，C++,JAVA,Python,PHP,HTML,C#,  %&*(*&^%$!@#$%</p>
                </div>   
            </div>
        </div>
    </div>
    <div id="second-section">
        <div class="heading">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                            <h2>我最不程序员</h2>
                    </div> 
                </div>
            </div>
        </div>
    </div>
    
    
    <div id="second-section2">

    
        <div class="container">
            <div class="row">
                <div class="triangle"></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <section id="cd-timeline-2" class="cd-container">
 <%
	System.out.println("id="+userid+"name="+username);
	mybeans=Item.Load(0);
	sz=mybeans.size();
	for(int i=0; i<sz; i++){
	 int textid=mybeans.get(i).getTextid();
	 
 %>
                        <div class="cd-timeline-block">
                            <div class="cd-timeline-img cd-picture">
                                <img src="images/second-icon.png" alt="Picture">
                            </div>

                            <div class="cd-timeline-content service-box-content">
                                <h2><%out.println(mybeans.get(i).getOwenerName()); %></h2>
                                <p><%out.println(mybeans.get(i).getContent()); %></p>
                              <div>
                               <div style="float:left; width:70%">
								<form>
									<fieldset class="starability-checkmark"> 
									  <input type="radio" id=<%=Integer.toString(i)+"rate5-6" %> name="rating" value="5"/>
									  <label for=<%=Integer.toString(i)+"rate5-6" %> title="Amazing" onclick="star(5, <%=userid%>, <%=textid%>);">5 stars</label>
							
									  <input type="radio" id=<%=Integer.toString(i)+"rate4-6" %> name="rating" value="4" />
									  <label for=<%=Integer.toString(i)+"rate4-6" %> title="Very good" onclick="star(4, <%=userid%>, <%=textid%>);">4 stars</label>
							
									  <input type="radio" id=<%=Integer.toString(i)+"rate3-6" %> name="rating" value="3" />
									  <label for=<%=Integer.toString(i)+"rate3-6" %> title="Average" onclick="star(3, <%=userid%>, <%=textid%>);">3 stars</label>
							
									  <input type="radio" id=<%=Integer.toString(i)+"rate2-6" %> name="rating" value="2" />
									  <label for=<%=Integer.toString(i)+"rate2-6" %> title="Not good" onclick="star(2, <%=userid%>, <%=textid%>);">2 stars</label>
							
									  <input type="radio" id=<%=Integer.toString(i)+"rate1-6" %> name="rating" value="1" />
									  <label for=<%=Integer.toString(i)+"rate1-6" %> title="Terrible" onclick="star(1, <%=userid%>, <%=textid%>);">1 star</label>
									</fieldset>
								</form>
								</div>
                                <div style="float:right; width:30%">
                                	<br><br><br>
                                	 <p>总得分为  :<%out.println(mybeans.get(i).getStar()); %></p>
                                </div>
                                </div>
							</div>
                        </div>
                        <%} %>
                        </div>  
                    </section>
                </div>
            </div>
        </div>
    </div>


    <div id="map">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4>请加入我们</h4>
                    <p>在这里记录下你的点点滴滴</p>
                </div>   
            </div>
        </div>
    </div>

    <div id="third-section">
        <div class="heading">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                            <h2>意见反馈</h2>
                    </div> 
                </div>
            </div>
        </div>
    </div>
    
    <div id="third-section3">
        <div class="container">
            <div class="row">
                <div class="triangle"></div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <form class="form">
                        <div class="row">
                        <div class="name col-md-4">
                            <input type="text" name="name" id="name" placeholder="Name" />
                        </div>
                        <div class="email col-md-4">
                            <input type="text" name="email" id="email" placeholder="Email" />
                        </div>
                        <div class="subject col-md-4">
                            <input type="text" name="subject" id="subject" placeholder="Subject" />
                        </div> 
                        </div>
                        <div class="row">        
                            <div class="text col-md-12">
                                <textarea name="text" placeholder="Message"></textarea>
                            </div>   
                        </div>                              
                        <div class="submit1">
                            <input type="submit" value="Send Now" />
                        </div>
                    </form>
                </div>
                <div class="col-md-4">
                    <div class="contact-discription">
                        <h4>More About Us!</h4>
                        <p>
                        <br><br>
                        <strong>邮寄地址:</strong><br><br>
                        中国-辽宁省-沈阳市-浑南新区-智慧大街500号<br>东北大学浑南校区
                        <br><br>
                        Tel: 13298253378<br>
						Email: 782343289@qq.com
                        <br><br>
                        衷心期待您的建议
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    

     -->
		<!-- Javascripts -->
		<script type="text/javascript" src="js/vendor/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/custom.js"></script>

</body>
</html>