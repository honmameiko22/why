<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet"  type="text/css"  href="javaweb.css"/>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body>
  <div class="starwars-demo">
    <img src="//cssanimation.rocks/demo/starwars/images/star.svg" alt="Star" class="star">
    <img src="//cssanimation.rocks/demo/starwars/images/wars.svg" alt="Wars" class="wars">
    <h2 class="byline" id="byline">The Force Awakens</h2>
  </div>
  
     <script>
     var byline = document.getElementById('byline');     // Find the H2
		bylineText = byline.innerHTML;                                      // Get the content of the H2
		bylineArr = bylineText.split('');                                   // Split content into array
		byline.innerHTML = '';                                                      // Empty current content
		
		var span;                   // Create variables to create elements
		var letter;
		
		for(i=0;i<bylineArr.length;i++){                                    // Loop for every letter
		  span = document.createElement("span");                    // Create a <span> element
		  letter = document.createTextNode(bylineArr[i]);   // Create the letter
		  if(bylineArr[i] == ' ') {                                             // If the letter is a space...
		    byline.appendChild(letter);                 // ...Add the space without a span
		  } else {
		        span.appendChild(letter);                       // Add the letter to the span
		    byline.appendChild(span);                   // Add the span to the h2
		  }
		}
     </script>
     <!-- 4秒之后自动跳转 -->
     <script> window.setInterval("location='Mainpage.html'",4000); </script> 
 
  </body>
</html>
