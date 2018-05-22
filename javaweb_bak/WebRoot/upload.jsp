<%@ page language="java" contentType="text/html; charset=UTF-8" 
		 pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File Upload to Database</title>
    </head>
    <body>
        <h1>File Upload to Database</h1>
        
          <input type="text" name="userId" size="50" placeholder="test user id " required/><br><br>
        
          <input type="text" name="userUploadTime" size="50" placeholder="test upload time" required/><br><br>
          
        
        
        <form name="fileform" method="post" action="UploadDownloadFileServlet" enctype="multipart/form-data">   
         
             <input type="file" name="fileName" size="50" placeholder="Upload Your Image" required/><br><br>
            <input type="submit" value="Save"> 
        </form>
    </body>
</html>