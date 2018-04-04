<#import "/freemarker.ftl" as com>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Demo</title>

  
  
  
  	
	
	<!-- //kindeditor编辑器的引入 -->
	<script  charset="utf-8" src="/plungs/kindeditor-4.1.10/kindeditor.js"></script>
	<script  charset="utf-8" src="/plungs/kindeditor-4.1.10/lang/zh_CN.js"></script>
	
	
	

	
	<#--  引入js的全局变量  -->
	<script src="/js/common/web.js" type="text/javascript"></script> 

	
  
</head>
<body>


<script>



//编辑器的初始化 
 KindEditor.ready(function (K) {
    K.create('textarea[name="content"]', {
				cssPath : '/plungs/kindeditor-4.1.10/plugins/code/prettify.css',
              //  uploadJson : '/plungs/kindeditor-4.1.10/jsp/upload_json.jsp',//原来的 会出现post请求
                uploadJson : '/newsController/addNewsPicture',//现在的自己写的上传代码
             
            	fileManagerJson : '/plungs/kindeditor-4.1.10/jsp/file_manager_json.jsp',
                allowFileManager: true,    
                //下面这行代码就是关键的所在，当失去焦点时执行 this.sync(); 
                afterBlur: function(){this.sync();}
                });
});	 

 
 
 



</script>



<ul>
<form action="/newsController/addNews" method="post" "  enctype="multipart/form-data">

<li>新闻标题：
	<textarea  name="title"  cols="130" rows="4" ></textarea> 
</li>
<li>新闻摘要：
	<textarea  name="zaiyao"  cols="130" rows="4" ></textarea> 
</li>
<li>新闻时间：<input type="date" name="time"/></li>
<li>新闻内容：
	<textarea 	name="content" id="textarea" cols="140" rows="30"></textarea>
</li>
<li>新闻标签：<input type="text" name="tag"  style="width:800px;" placeholder="请输入以空格分割的标签"/></li>
<li><input type="submit" value="提交" /></li>
</form>

</ul>

<div style="height:300px;width:100%;" ></div>
  
 


</body>
</html>
