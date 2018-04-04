<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title></title>


	<!-- //kindeditor编辑器的引入 -->
	<script  charset="utf-8" src="/plungs/kindeditor-4.1.10/kindeditor.js"></script>
	<script  charset="utf-8" src="/plungs/kindeditor-4.1.10/lang/zh_CN.js"></script>
	
	<script  charset="utf-8" src="/js/common/jquery-1.8.3.min.js"></script>
	
	<#--  引入js的全局变量  -->
	<script src="/js/common/web.js" type="text/javascript"></script> 
<script>
//编辑器的初始化 
 KindEditor.ready(function (K) {
    K.create('textarea[name="m_content"]', {
				cssPath : '/plungs/kindeditor-4.1.10/plugins/code/prettify.css',
              //  uploadJson : '/plungs/kindeditor-4.1.10/jsp/upload_json.jsp',//原来的 会出现post请求
                uploadJson : '/messageIndexController/addMessagePicture',//现在的自己写的上传代码
             
            	fileManagerJson : '/plungs/kindeditor-4.1.10/jsp/file_manager_json.jsp',
                allowFileManager: true,    
                //下面这行代码就是关键的所在，当失去焦点时执行 this.sync(); 
                afterBlur: function(){this.sync();}
                });
});	 



//分页跳转函数2017/7/10
function gotoPageNum( offset ){
	if(offset == "" || offset == null){
		offset = $("#currentPage").val();
		if(offset == ""){
		return;
		}
	}
	window.location.href = "/messageController/showAllMessage?currentPage=" + offset;
}




</script>

<style type="text/css">
body{
	width:100%;
	height:900px;
	margin:0 auto;
	font-family:"LiSu";
}
#mybody{
	width:1000px;
	height:900px;
	margin:0 auto;
}
#messageContent{
	width:100%;
	float:left;
	background:#F2F2F2;

}
#messageContent_div{
	width:100%;
	background:#FFFFFF;
	margin:0 auto;
	margin-top:40px;
	border:1px solid #FBCFE0;
}
#messageContent_div_div{
	width:95%;
	background:#FFFFFF;
	margin:0 auto;
	margin-top:10px;
}
hr{
	width:100%;
	height:3px;
	background:#FBCFE0;
	border:none;
}
.myhr{
	width:100%;
	height:1px;
	background:#FBCFE0;
	border:none;

}
#fabiao{
	width:80px;
	height:30px;
	border:none;
	background:#F480BF;
	
}
.mypagediv{
	width:65px;
	float:left;
	height:30px;
}

</style>
</head>
<body>
<div id="mybody" >

	
	
	<div id="messageContent" >
		<div id="messageContent_div" >
			<div id="messageContent_div_div" >
				<p>留言板</p>
				<hr>
					主人寄语
				<hr class="myhr" >
				<p>欢迎来到宜居平台</p>
				<br/>
				<br/>
				<br/>
				<p>
					<span style="float:left;">留言(${pageBean.recordCount?if_exists})</span>
					<span style="float:right;margin-left:15px;">下一页</span>
					<span style="float:right;">上一页</span>
				</p>
				<hr class="myhr" >
				
				<#list pageBean.recordList as message> 
				
					<div style="float:left;width:100%;color:#EC5CA4;">
						<span>${message.user_name?if_exists} 第${message.id?if_exists}楼</span>
						<span style="float:right;">
							<#if message.id_check = 1  >
								         审核通过
							</#if>
							<#if message.id_check = 2  >
								<a href="/messageController/updateMessageCheckById?id=${message.id?if_exists}" style="color:red;" >未审核</a>
							</#if> 
							<#if message.id_check = 3  >
								<a href="/messageController/updateMessageCheckByIdThree?id=${message.id?if_exists}" >已移入垃圾箱（点击恢复）</a>
							</#if> 
							<a href="/messageController/deleteMessageById?id=${message.id?if_exists}" >删除</a>
						</span>
					</div>
					<div style="float:left;width:100%;margin-left:20px;">
						${message.m_content?if_exists}
					</div>
					<div style="float:left;width:100%;height:20px;"></div>
					<div style="float:left;width:100%;margin-left:20px;font-size:10px;">${message.create_time?if_exists}</div>
					<div style="float:left;width:100%;height:20px;"></div>
					<hr class="myhr" ></hr>
				
				</#list>
			</div>
			
			
			
			<div style="width:100%;heigh:100px;float:left;margin-top:10px;margin-bottom:40px;background:#FFFFFF;">
				<div class="mypagediv" >
					<a href="javascript:gotoPageNum(1)" title="首页" style="cursor: hand;">首页</a>
				</div>
				<#if pageBean.currentPage-1 lte 0 >
					<div class="mypagediv" >上一页</div>
					<#else> 
					<div class="mypagediv" >
						<a href="javascript:gotoPageNum(${pageBean.currentPage - 1 })">上一页</a>
					</div>
				</#if> 
				<#if pageBean.currentPage - 3 gt 0 >
					<#if pageBean.pageCount  gt 5 >
						<div class="mypagediv" >...</div>
					</#if> 
				</#if> 
				<#list pageBean.beginPageIndex..pageBean.endPageIndex as num>
					 <#if pageBean.currentPage = num >
							<div class="mypagediv" >
								<a style="cursor: hand;" >${num }</a>
							</div>
					<#else> 
							<div class="mypagediv" >
								<a  href="javascript:void(0);" style="cursor: hand;" onClick="gotoPageNum(${num});">${num }</a>
							</div>
					</#if> 
				</#list>
				<#if pageBean.currentPage + 2 lt pageBean.pageCount   >
					<#if pageBean.pageCount gt 5  >
						<div class="mypagediv" >...</div>
					</#if> 
				</#if> 
				<#if pageBean.currentPage + 1 gt pageBean.pageCount >
					<div class="mypagediv" >下一页</div>
				<#else> 
					<div class="mypagediv" >
						<a href="javascript:gotoPageNum(${pageBean.currentPage + 1 })">下一页</a>
					</div>
				</#if> 
				<div class="mypagediv" >
					<a href="javascript:gotoPageNum(${pageBean.pageCount })" title="尾页" style="cursor: hand;"> 尾页  </a>
				</div>
				<div class="mypagediv" >
					 总共${pageBean.pageCount }页
				</div>
				<div class="mypagediv" >
					<input type="number" name="currentPage" id="currentPage" min="1" max="${pageBean.pageCount }"/>
				</div>
				<div class="mypagediv" >
					<a href="javascript:gotoPageNum();">go</a>
				</div>
			</div>
			
			
			
		</div>
	</div>

	

</div>
</body>
</html>