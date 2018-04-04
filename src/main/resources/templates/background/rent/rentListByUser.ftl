<#import "/freemarker.ftl" as com>

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

<div id="body">

	<#list rentList as rent> 
	
		<div class="body_items">
			<div class="body_items_pic">
				<a href="/rentController/goToRentImgPage?id=${rent.id?if_exists}">
					<img src="${rent.h_small_pic?if_exists}"/>
				</a>
			</div>
			<div class="body_items_content">
				<table>
					<tr style="height:30px;"></tr>
					<tr>
						<td  colspan="4" >${rent.h_name?if_exists}</td>
					</tr>
					<tr>
						<td style="width:20%;" >${rent.h_space?if_exists}平方米</td>
						<td style="width:20%;" >${rent.h_home_count?if_exists}</td>
						<td style="width:20%;" >${rent.h_hight?if_exists}</td>
						
						<td style="width:40%;"  >
							<font style="color:red;font-size:30px;">${rent.h_price?if_exists}</font>
							<font style="color:red;font-size:10px;">元/每月 </font>
						</td>
						
					</tr>
					<tr>
						<td colspan="4">${rent.h_address?if_exists} </td>
					</tr>
					<tr>
						<td colspan="4" style="text-align:right;">
							<span >
								<a href="/rentController/preUpdateRentById?id=${rent.id?if_exists}">修改</a>
							</span>
							<span  style="margin-left:30px;">
								<a href="/rentController/deleteRentById?id=${rent.id?if_exists}" onClick="return confirm('确定要删除吗？');" >删除</a>
							</span>
							<span  style="margin-left:30px;"></span>
						</td>
					</tr>
				</table>
			</div>
		</div>
	
	</#list> 
	
	<div style="float:left;width:100%;height:100px;text-align:center;" >
		<p>--------------------------------------我是有底线的--------------------------</p>
	</div>
	
</div>


	
    
 
  
 


</body>
</html>
