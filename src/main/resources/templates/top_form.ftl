<meta charset="UTF-8">
<style>
#logo{
	position:relative;
	float:left;
	height:100px;
	width:100%;
	background-color:#FFFFFF;
	border:1px solid gray;
}
#logo1{
	position:relative;
	float:left;
	width:100px;
	height:100px;
	background: url("/img/logo.jpg");
	background-size:100% 100%;
	
}
#city{
	position:relative;
	float:left;
	width:100px;
	height:100px;
	line-height:100px;
	
}
#search{
	position:relative;
	float:left;
	width:75%;
	height:100px;
	line-height:100px;
	text-align:right;
}
#search_text{
	height:30px;
	width:500px;
	border:1px solid red;
}
#search_button{
	height:30px;
	width:100px;
	background:orange;
}


</style>

<div id="logo">
	<div id="logo1"></div>
	<div id="city">首页 > 杭州</div> 
	<div id="search">
		<form action="">
			<input type="text"  	id="search_text" value="search" />
			<input type="button" 	id="search_button" value="search" />
		</form>
	</div> 
	<div>
		网站被访问了${clickCount?if_exists}次
	</div>
</div>

	
	
	
	