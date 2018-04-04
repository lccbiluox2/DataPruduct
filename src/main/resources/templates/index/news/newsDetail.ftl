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
				<td style="font-size:40px;">
					${news.title?if_exists}
				</td>
			</tr>
			<tr>
				<td style="font-size:30px;">
					<span style="margin-left:100px;" >摘要：  ${news.zaiyao?if_exists} </span>
				</td>
			</tr>
			<tr>
				<td style="text-align:left;font-size:30px;">
					<span style="margin-left:100px;" >时间  ${news.create_time?if_exists} </span>
				</td>
			</tr>
			<tr>
				<td style="text-align:left;font-size:30px;">
					<span style="margin-left:200px;" >${news.content?if_exists} </span>
				</td>
			</tr>
			<tr>
				<td style="text-align:left;font-size:30px;">
					<span  >标签：${news.tag?if_exists} </span>
				</td>
			</tr>
		</table>
			
				
		<div style="float:left;width:100%;height:100px;text-align:center;" >
			<p>--------------------------------------我是有底线的--------------------------</p>
		</div>

		<#include  "/foot.ftl" >
		
</div>
</div>



</body>
</html>