<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Demo</title>

	<#--  引入js的全局变量  -->
	<script src="/js/common/web.js" type="text/javascript"></script> 

	<link type="text/css" rel="stylesheet" href="/css/back/rent/rentListByUser.css" />
  
</head>
  
  <body>
   <form action="/rentController/uploadRentImg" method="post"  enctype="multipart/form-data">
		<input type="text" name="id" value="${id}"/><br/>
		上传图片:<input type="file" name="myFile" ><br/>
		<input type="submit" value="上传" >
	</form>
  </body>
</html>
