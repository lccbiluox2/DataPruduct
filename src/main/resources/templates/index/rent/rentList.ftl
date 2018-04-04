<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title></title>

<style type="text/css">
body{
	width:100%;
	height:900px;
	margin:0 auto;
	font-family:"LiSu";
}
#mybody{
	width:1200px;
	height:900px;
	margin:0 auto;
}
#content{
	width:100%;
	height:300px;
	float:left;
}
.body_items{
	float:left;
	width:100%;
	margin-top:10px;
	background:#E8F7E8;
}
.body_items:hover{
	background:#95DB98;
}
.body_items_pic{
	float:left;
	width:150px;
	height:150px;
	padding:8px;
}
.body_items_pic img{
	float:left;
	width:100%;
	height:100%;

}
.body_items_content{
	float:left;
	width:1000px;
	height:150px;
	padding:8px;
}
.body_items_content table{
	width:100%;
}



</style>
</head>
<body>
<div id="mybody" >
<#include  "/top_menu.ftl" >
<#include  "/top_form.ftl" >
<#include  "/index/rent/top_con_rent.ftl" >
<div id="content"   >
			
			<#list rentList as rent> 
					<a href="/rentIndexController/showRentDetailById?id=${rent.id?if_exists}">
					<div class="body_items">
						<div class="body_items_pic">
								<img src="${rent.h_small_pic?if_exists}"/>
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
							
							</table>
						</div>
					</div>
					</a>
				</#list> 
				
				<div style="float:left;width:100%;height:100px;text-align:center;" >
					<p>--------------------------------------我是有底线的--------------------------</p>
				</div>
				<#include  "/foot.ftl" >

</div>
</div>


</body>
</html>