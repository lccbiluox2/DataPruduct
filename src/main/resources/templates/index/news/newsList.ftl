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
			
			 <table style="width:100%;border:1px solid gray;">
				<tr>
					<td>标题</td>
					<td>时间</td>
					<td>发布人</td>
					<td>标签</td>
				</tr>
			<#list newsList as item> 
				<tr >
					<td>
					<a href="/newsIndexController/showNewsDetailById?id=${item.id?if_exists}">
						${item.title?if_exists}
					</a>
					</td>
					<td>${item.time?if_exists}</td>
					<td>${item.user_name?if_exists}</td>
					<td>${item.tag?if_exists}</td>
				</tr>
			</#list> 
		</table>


</div>
</div>

<#include  "/foot.ftl" >

</body>
</html>