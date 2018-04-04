<#import "freemarker.ftl" as com>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title></title>

<script src="/js/common/jquery-1.8.3.min.js"></script>

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

	float:left;
	background:#3E3A39;
}




#imgRol{
	width:100%;
	float:left;
	background:green;
	text-align:center;
}

#run img{
	width:100%;
	display:none;
	z-index:1;

}
#run_bt{
	width:1200px;
	height:30px;
	position:absolute;
	margin-top:-30px;
	z-index:30;
	
	background-color:black;
	

}
.show_img_index1{
	margin-left:400px;
}
.show_img_index2{
	margin-left:440px;
}
.show_img_index3{
	margin-left:480px;
}
.show_img_index4{
	margin-left:520px;
}
.show_img_index5{
	margin-left:560px;
}

.show_img_index6{
	margin-left:760px;
	position:absolute;
	color:#FFFFFF;
	display:block;
	height:30px;
	line-height:30px;
}
.show_img_index6 a{
	color:#FFFFFF;
}


.show_img_index_a a{
	position:absolute;
	color:#FFFFFF;
	display:block;
	width:30px;
	height:30px;
	line-height:30px;
	
}
#showChart{
	width:100%;
	height:500px;
	margin-top:30px;
	float:left;
	background:#3E3A39;
	text-align:center;


}

</style>


<script>
function showImgIndex(indexs){
	
	//alert(indexs);
	
	for(var i=0;i<=4;i++){
		if(indexs-1 == i){
			$(".run1").eq(i).css("display","block"); 
		}else{
			$(".run1").eq(i).css("display","none"); 
		}
	}

}

var timeIndex = 0;
function chvalue(){ 
	if(timeIndex == 5){
		timeIndex = 0;
	} 
	for(var i=0;i<=4;i++){
			if(timeIndex == i){
				$(".run1").eq(i).css("display","block"); 
			}else{
				$(".run1").eq(i).css("display","none"); 
			}
	}
	timeIndex++;
}  
window.setInterval(chvalue, 2000);  

</script>

</head>
<body>
<div id="mybody" >
<#include  "/top_menu.ftl" >


<div id="content"   >

	<div id="imgRol">
		<div id="run" style="width:100%;background-color:red;float:left;">
			<div>
				<img src="/img/index/run1.png" style="display:block;" class="run1"/>
				<img src="/img/index/run2.png"  class="run1"/>
				<img src="/img/index/run3.png"  class="run1"/>
				<img src="/img/index/run4.png"  class="run1"/>
				<img src="/img/index/run5.png"  class="run1"/>
			</div>
			<div id="run_bt" >
				<div class="show_img_index1 show_img_index_a"  ><a href="#" onMouseOver ="showImgIndex(1)">1</a></div>
				<div class="show_img_index2 show_img_index_a" ><a href="#" onMouseOver ="showImgIndex(2)">2</a></div>
				<div class="show_img_index3  show_img_index_a" ><a href="#" onMouseOver ="showImgIndex(3)">3</a></div>
				<div class="show_img_index4  show_img_index_a" ><a href="#" onMouseOver ="showImgIndex(4)">4</a></div>
				<div class="show_img_index5  show_img_index_a " ><a href="#" onMouseOver ="showImgIndex(5)">5</a></div>
				
				<div class="show_img_index6  " ><a href="#" >网站被访问了${clickCount?if_exists}次</a></div>
			</div>
		</div>
	</div>
	
	<div id="showChart">
		
		<img alt="" src="${zhexianUrl?if_exists}"  style="width:98%;height:98%;" >
	</div>
	
</div>

<#include  "/foot2.ftl" >
<br/>

<#include  "/foot.ftl" >
</div>
</body>
</html>