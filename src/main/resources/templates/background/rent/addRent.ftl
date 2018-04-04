<#import "/freemarker.ftl" as com>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Demo</title>

  
  
  
  	<!-- 省市级联的js -->
	<script src="/js/jquery-1[1].2.6.js" type="text/javascript"></script>
	<script src="/js/jquery.provincesCity.js" type="text/javascript"></script>
	<script src="/js/provincesdata.js" type="text/javascript"></script> 
	
	<!-- //kindeditor编辑器的引入 -->
	<script  charset="utf-8" src="/plungs/kindeditor-4.1.10/kindeditor.js"></script>
	<script  charset="utf-8" src="/plungs/kindeditor-4.1.10/lang/zh_CN.js"></script>
	
	
	

	
	<#--  引入js的全局变量  -->
	<script src="/js/common/web.js" type="text/javascript"></script> 

	
  
</head>
<body>


<script>

$(function() {
		
	//省市联动
	$("#selectLocation1").ProvinceCity();
	
});

//编辑器的初始化 
 KindEditor.ready(function (K) {
    K.create('textarea[name="h_desc"]', {
				cssPath : '/plungs/kindeditor-4.1.10/plugins/code/prettify.css',
              //  uploadJson : '/plungs/kindeditor-4.1.10/jsp/upload_json.jsp',//原来的 会出现post请求
                uploadJson : '/rentController/addRentPicture',//现在的自己写的上传代码
             
            	fileManagerJson : '/plungs/kindeditor-4.1.10/jsp/file_manager_json.jsp',
                allowFileManager: true,    
                //下面这行代码就是关键的所在，当失去焦点时执行 this.sync(); 
                afterBlur: function(){this.sync();}
                });
});	 

 
 
 



</script>



<ul>
<form action="/rentController/addRent" method="post" "  enctype="multipart/form-data">

<li>房屋名称：<input type="text" name="h_name" /></li>
<li>
	<div data-role="none" id="selectLocation1">
		<table>
			<tr>
				<td>区域：</td>
				<td>选择省</td>
				<td>
					<select id="serachRoad_sheng" name="h_province"  data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'></select>
				</td>
				<td>选择市</td>
				<td>
					<select id="serachRoad_shi" name="h_city"  data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'></select>
				</td>
				<td>选择区</td>
				<td>
					<select id="serachRoad_qu" name="h_qu"   data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'></select>
				</td>
			</tr>
			
			<tr>
				<td>备注地址</td>
				<td colspan="5"><input type="text" name="h_address_detail" style='width:400px;' /></td>
			</tr>
		</table>
	</div>
</li>
<li>空间大小：<input type="text" name="h_space"/></li>
<li>房屋价格：<input type="text" name="h_price"/></li>
<li>房间个数：<input type="text" name="h_home_count"/></li>
<li>房屋备注：
	<textarea  name="h_beizhu"  cols="150" rows="10" ></textarea> 
</li>
<li>描述：
	<textarea 	name="h_desc" id="textarea" cols="150" rows="30"></textarea>
</li>
<li>房屋电话：<input type="text" name="h_phone"/></li>
<li>结束时间：<input type="date" name="h_end_time"/></li>
<li>所在高度：<input type="text" name="h_hight"/> </li>
<li>是否为新房：
	<input name="h_is_new" type="radio" value="1" >新房 </input>
	<input name="h_is_new" type="radio" value="2" >旧房 </input>
</li>
<li>房屋类型：
	<input name="h_type" type="radio" value="1" >新房 </input>
	<input name="h_type" type="radio" value="2" >二手房 </input>
	<input name="h_type" type="radio" value="3" >商铺 </input>
	<input name="h_type" type="radio" value="4" >写字楼</input>
</li>
<li>房屋状态：
	<input name="h_state" type="radio" value="1" >在售 </input>
	<input name="h_state" type="radio" value="2" >已出售 </input>
	<input name="h_state" type="radio" value="3" >已撤销 </input>
	<input name="h_state" type="radio" value="4" >待定</input> 
</li>
<li><input type="submit" value="提交" /></li>
</form>

</ul>

<div style="height:300px;width:100%;" ></div>
  
 


</body>
</html>
