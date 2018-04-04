<#import "/freemarker.ftl" as com>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Demo</title>

  
  
  
  	
	
	
	
	<#--  引入js的全局变量  -->
	<script src="/js/common/web.js" type="text/javascript"></script> 

<style type="text/css">
td{
	border:1px solid gray;
}

</style>
	
  
</head>
<body>

<table style="width:100%;border:1px solid gray;">
		<tr>
			<td>标题</td>
			<td>时间</td>
			<td>发布人</td>
			<td>标签</td>
			<td>修改</td>
			<td>删除</td>
		</tr>
	<#list List as item> 
		<tr >
			<td>${item.title?if_exists}</td>
			<td>${item.time?if_exists}</td>
			<td>${item.user_name?if_exists}</td>
			<td>${item.tag?if_exists}</td>
			<td>
				<a href="/newsController/preUpdateNewsById?id=${item.id?if_exists}">修改</a>
			</td>
			<td>
				<a href="/newsController/deleteNewsById?id=${item.id?if_exists}" onClick="return confirm('确定要删除吗？');" >删除</a>
			</td>
		</tr>
	</#list> 
</table>


<div style="height:300px;width:100%;" ></div>
  
 


</body>
</html>
