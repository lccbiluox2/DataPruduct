<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">

<title>My JSP 'user_register.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="/css/index/user/user_register.css">

<script type="text/javascript">
function verify1(){
		pwd1=document.form1.pwd1.value;
		if(pwd1.length<6||pwd1==null)
		{ 
			
			document.getElementById("jsMsg").innerHTML="密码格式不正确";	
		} 
		
	

    }
function verify(){
		pwd1=document.form1.pwd1.value;
		pwd2=document.form1.pwd2.value;
		
		if(pwd1!=pwd2)
		{ 
			document.getElementById("jsMsg").innerHTML="密码不匹配!";
		
		} 
		

    }


 function check(){ 
		username=document.form1.username.value; 
		email=document.form1.email.value; 
		mobile=document.form1.mobile.value;
		if(username.length<1||username.length>15)
		{
		alert("用户名长度必须在6-15位之间！"); 
		return false;
		} 
		 if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(mobile)))
		{ 
        		alert("不是完整的11位手机号或者正确的手机号前七位"); 
        		document.form1.mobile.focus(); 
        		return false; 
		}
	
		
		
		return true; 
	} 
	</script>
</head>

<body class="body1">
	<div class="body2">
		<div class="logo">
			<a href=""><img src="/img/user/logo.jpg">
			</a>
		</div>
		<div class="content">
			<div class="center">
				<form name="form1" method="post" action="/userController/userRegisterReal"
					onSubmit="return check();">
					<table align="center">
						<tbody>
							<tr>
								<td style="padding-left:10px"><h2>用户注册</h2>
								</td>
								<td align="right">
								<a href="/userController/userLogin" style="color:#666;">已有账号！&nbsp;
									<span style="color:#F93">登录</span>
								</a>
								</td>
							</tr>
							<tr>
								<th><span class="color-red">*</span>用&nbsp;户&nbsp;名</th>
								<td colspan="2"><p>
										<input type="text" name="user_name" id="username" class="username"
											placeholder="输入用户名/手机号码" autofocus required /><br />
									</p></td>
							</tr>
							<tr>
								<th><span class="color-red">*</span>设置密码</th>
								<td colspan="2"><p>
										<input type="password" name="user_passwd" id="pwd1" class="username"
											placeholder="输入密码" onblur="verify1();" required />
									</p>
									<br /></td>
							</tr>
							<tr>
								<th><span class="color-red">*</span>确认密码</th>
								<td colspan="2"><p>
										<input type="password" id="pwd2" class="username"
											onblur="verify();" placeholder="确认密码" required />
									</p></td>
							</tr>
							<tr>
								<th><span class="color-red">*</span>手&nbsp;机&nbsp;号</th>
								<td colspan="2"><p>
										<input type="text"  name="user_phone" id="mobile" class="username"
											placeholder="手机号码" required /><br />
									</p></td>
							</tr>
							<tr>
								<th><span class="color-red">*</span>邮&nbsp;&nbsp;箱</th>
								<td colspan="2"><p>
										<input type="email" name="user_email"  id="email" class="username"
											placeholder="请输入正确的邮箱地址" required /><br />
									</p></td>
							</tr>
							<tr>
								<td align="left"><input type="checkbox" checked><label>我已阅读并接受
								</label>
								</td>
								<td align="right"><a href=""><span style="color:#00F">消费协议</span>
								</a>
								</td>
							</tr>
							<tr>
								<td colspan="2"><br />
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center"><input type="submit"
									class="button" value="立即注册">
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center" >
									<font id="jsMsg" style="margin-top:30px;color:red;"></font>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
		<div class="footer">
			<p>联系地址：河南省新乡市红旗区新乡学院 邮编：000000</p>
		</div>

	</div>
</body>
</html>




