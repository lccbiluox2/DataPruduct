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
</style>
</head>
<body>
<div id="mybody" >
<#include  "/top_menu.ftl" >
<#include  "/top_form.ftl" >
<div id="content"   >
			
			<table style="width:100%;">
			<tr>
				<td style="text-align:center;font-size:40px;">
					${rent.h_name?if_exists}
				</td>
			</tr>
			<tr>
				<td style="text-align:center;font-size:40px;">
					<img src="${rent.h_pic?if_exists}" style="width:100%;"/>
				</td>
			</tr>
			<tr>
				<td style="text-align:left;font-size:30px;">
					<span  >房源信息    ${rent.h_address?if_exists} </span>
				</td>
			</tr>
			<tr>
				<td>
					<table style="width:900px;border:2px solid gray;">
						<tr>
							<td>租金:</td>
							<td>	
								<font style="color:red;font-size:30px;">${rent.h_price?if_exists}</font>
								<font style="color:red;font-size:10px;">元/每月 </font>
							</td>
							<td  style="width:200px;"></td>
							<td>面积:</td>
							<td>	
								${rent.h_space?if_exists}
							</td>
						</tr>
						
						<tr>
							<td>房间:</td>
							<td>	
								${rent.h_home_count?if_exists}
							</td>
							<td  style="width:200px;"></td>
							<td>高度:</td>
							<td>	
								${rent.h_hight?if_exists}
							</td>
						</tr>
						
						
						<tr>
							<td>房子新旧:</td>
							<td>
								<#if rent.h_is_new = 1> 
  									新房
								</#if>
								<#if rent.h_is_new = 2> 
  									旧房
								</#if> 	
							</td>
							<td  style="width:200px;"></td>
							<td>房子类型:</td>
							<td>	
								<#if rent.h_type = 1> 
  									新房
								</#if>
								<#if rent.h_type = 2> 
  									二手房
								</#if> 
								<#if rent.h_type = 3> 
  									商铺
								</#if>
								<#if rent.h_type = 4> 
  									写字楼 
								</#if>	
							</td>
						</tr>
						
						
						<tr>
							<td>房子状态:</td>
							<td>	
								<#if rent.h_state = 1> 
  									在售
								</#if>
								<#if rent.h_state = 2> 
  									已出售
								</#if>
								<#if rent.h_state = 3> 
  									撤销 
								</#if>
								<#if rent.h_state = 4> 
  									待定
								</#if>
							</td>
							<td  style="width:200px;"></td>
							<td>发布人:</td>
							<td>	
								${rent.user_name?if_exists}
							</td>
						</tr>
						
						
						<tr>
							<td>发布人电话:</td>
							<td>	
								${rent.user_phone?if_exists}
							</td>
							<td  style="width:200px;"></td>
							<td></td>
							<td></td>
						</tr>
						
					</table>
				</td>
			</tr>
			
			<table >
				<tr>
					<td style="text-align:left;font-size:30px;">
					<span  >备注信息  </span>
					</td>
				</tr>
				<tr >
					<td>	
						<span >${rent.h_beizhu?if_exists}</span>
					</td>
				</tr>
				<tr>
					<td style="text-align:left;font-size:30px;">
						<span  >详细信息 </span>
					</td>
				</tr>
				<tr>
					<td>	
						<span  >${rent.h_desc?if_exists}</span>
					</td>
				</tr>
			</table>
			
		</table>
			
				
		<div style="float:left;width:100%;height:100px;text-align:center;" >
			<p>--------------------------------------我是有底线的--------------------------</p>
		</div>
		
		<#include  "/foot.ftl" >

</div>
</div>



</body>
</html>