<meta charset="UTF-8">
<!-- 省市级联的js -->
<script src="/js/jquery-1[1].2.6.js" type="text/javascript"></script>
<script src="/js/jquery.provincesCity.js" type="text/javascript"></script>
<script src="/js/provincesdata.js" type="text/javascript"></script> 
<script>
$(function() {
		//省市联动
		$("#selectLocation1").ProvinceCity();
});

</script>
<div data-role="none" id="selectLocation1" style="float:left;position:relative;width:100%;">
	
	<form action="/rentIndexController/searchRentByCondition" method="post">
	
	
	
	<table>
		<tr>
			<td>区域：</td>
			<td>选择省</td>
			<td>
				<select id="serachRoad_sheng" name="h_province"  data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'></select>
			</td>
			<td>选择市</td>
			<td>
				<select id="serachRoad_shi"  name="h_city"  data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'></select>
			</td>
			<td>选择区</td>
			<td>
				<select id="serachRoad_qu"  name="h_qu"  data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'></select>
			</td>
			<td></td>
			<td></td>
			
		</tr>
		
		<tr>
			<td>租金：</td>
			<td>最低价</td>
			<td>
				<select id="serachRoad_sheng" name="minPrice"  data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'>
					<option value="0" > 0 </option>
					<option value="300" > 300 </option>
					<option value="500" > 500 </option>
					<option value="600" > 600 </option>
					<option value="700" > 700 </option>
					<option value="800" > 800 </option>
					<option value="900" > 900 </option>
					<option value="1000" > 1000 </option>
					<option value="1200" > 1200 </option>
					<option value="1400" > 1400 </option>
					<option value="1600" > 1600 </option>
					<option value="1800" > 1800 </option>
					<option value="2000" > 2000 </option>
					<option value="2500" > 2500 </option>
					<option value="3000" > 3000 </option>
					<option value="3500" > 3500 </option>
					<option value="4000" > 4000 </option>
					<option value="5000" > 5000 </option>
					<option value="6000" > 6000 </option>
					<option value="7000" > 7000 </option>
					<option value="10000" > 1万 </option>
					<option value="20000" > 2万 </option>
					<option value="60000" > 6万 </option>
					<option value="100000" > 10万 </option>
					<option value="200000" > 20万 </option>
					<option value="300000" > 30万 </option>
					<option value="500000" > 50万 </option>
					<option value="1000000" > 100万 </option>
					<option value="10000000" > 1000万 </option>
				</select>
			</td>
			<td>最高价</td>
			<td>
				<select id="serachRoad_sheng" name="maxPrice"  data-role="none" style='width:100px;height:25px;margin-left:20px;float:left;'>
					<option value="0" > 不限 </option>
					<option value="500" > 500 </option>
					<option value="600" > 600 </option>
					<option value="700" > 700 </option>
					<option value="800" > 800 </option>
					<option value="900" > 900 </option>
					<option value="1000" > 1000 </option>
					<option value="1200" > 1200 </option>
					<option value="1400" > 1400 </option>
					<option value="1600" > 1600 </option>
					<option value="1800" > 1800 </option>
					<option value="2000" > 2000 </option>
					<option value="2500" > 2500 </option>
					<option value="3000" > 3000 </option>
					<option value="3500" > 3500 </option>
					<option value="4000" > 4000 </option>
					<option value="5000" > 5000 </option>
					<option value="6000" > 6000 </option>
					<option value="7000" > 7000 </option>
					<option value="10000" > 1万 </option>
					<option value="20000" > 2万 </option>
					<option value="60000" > 6万 </option>
					<option value="100000" > 10万 </option>
					<option value="200000" > 20万 </option>
					<option value="300000" > 30万 </option>
					<option value="500000" > 50万 </option>
					<option value="1000000" > 100万 </option>
					<option value="10000000" > 1000万 </option>
					<option value="1000000000" > 10亿 </option>
				</select>
			</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td style="width:200px;" ></td>
			<td>
				<input type="submit" 	id="search_button2" value="search" style="width:100px;background:orange;" />
			</td>
		</tr>
		
		<tr>
			<td>类型</td>
			<td>
				<input name="h_type" type="radio" value="1" >新房 </input>
				<input name="h_type" type="radio" value="2" >二手房 </input>
				<input name="h_type" type="radio" value="3" >商铺 </input>
				<input name="h_type" type="radio" value="4" >写字楼</input>
			</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		
	</table>
	
	
	</form>
	
	
</div>
	
	
	
	