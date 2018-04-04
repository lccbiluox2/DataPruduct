<meta charset="UTF-8">
<style>
a{
	TEXT-DECORATION:none
}
#body_top{
	width:100%;
	margin:0 auto;
	font-family:"LiSu";
}
#top{
	position:relative;
	float:left;
	height:40px;
	width:100%;
	background-color:black;
}
.top_left{
	position:relative;
	float:left;
	height:40px;
	width:30px;
	
}
.item1{
	position:relative;
	float:left;
	height:40px;
	width:5%;
	color:#F00;
	text-align:center;
	line-height:40px;
	display:block;
}
.item1 a{
	color:#FFF;
}
.item1:hover{
	background-color:green;
}

.item2{
	position:relative;
	float:right;
	height:40px;
	width:7%;
	text-align:center;
	line-height:40px;
	display:block;
}
.item2 a{
	color:#FFF;
}
.item2:hover{
	background-color:green;
}

</style>
<div id="body_top">
	<div id="top">
		<div class="top_left"></div>
		<div class="item1"><a href="/indexController/welcome">首 页</a></div>
		<div class="item1"><a href="/newsIndexController/getAllNews">新闻</a></div>
		<div class="item1"><a href="">租房</a></div>
		<div class="item1"><a href="/rentIndexController/getAllRent">出租</a></div>
		<div class="item1"><a href="">求租</a></div>
		<div class="item1"><a href="/rentIndexController/getRentByHstate?h_state=1">出售</a></div>
		<div class="item1"><a href="">求购</a></div>
		<div class="item1"><a href="/messageIndexController/preAddMessagePage?currentPage=0">留言板</a></div>
		
	
		<div class="item2"><a href="/userController/toAdminLogin">经纪人登录</a></div>
		<div class="item2"><a href="/userController/userLogin">用户登录</a></div>
		<div class="item2"><a href="/userController/userRegister">注册 </a></div>
	</div>
</div>	
	
	
	
	