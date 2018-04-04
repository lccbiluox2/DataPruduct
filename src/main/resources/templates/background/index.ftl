<#import "/freemarker.ftl" as com>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台模板管理系统</title>
<link type="text/css" rel="stylesheet" href="/css/back/style.css" />
<script type="text/javascript" src="/js/common/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/js/back/menu.js"></script>
</head>

<body>
<div class="top"></div>
<div id="header">
	<div class="logo">房产中介信息管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li><a href=""><#-- ${user.user_name?if_exists } --></a></li>
			<li><a href="">修改密码</a></li>
			<li><a href="">设置</a></li>
			<li><a href="/userController/loginOut">退出</a></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="left_menu">
				<ul id="nav_dot">
      <li>
          <h4 class="M1"><span></span>系统公告</h4>
          <div class="list-item none">
            
          </div>
        </li>
        <li>
          <h4 class="M2"><span></span>出租信息</h4>
          <div class="list-item none">
            <a href='${AppUrl}/rent/addRent' target="myview">添加出租信息</a>
            <a href='/rentController/getAllRentByUser' target="myview">查看出租信息</a>
           </div>
        </li>
        <li>
          <h4 class="M3"><span></span>求租信息</h4>
          <div class="list-item none">
            <a href=''>查看求租信息</a>
            <a href=''>添加求租信息</a>
          </div>
        </li>
		<li>
          <h4 class="M4"><span></span>出售信息</h4>
          <div class="list-item none">
           <a href=''>查看出售信息</a>
           <a href=''>添加出售信息</a>
          </div>
        </li>
		<li>
          <h4 class="M5"><span></span>求购信息</h4>
          <div class="list-item none">
            <a href=''>查看求购信息</a>
           <a href=''>添加求购信息</a>
          </div>
        </li>
				<li>
          <h4  class="M6"><span></span>留言板</h4>
          <div class="list-item none">
            	 <a href='/messageController/showAllMessage?currentPage=0' target="myview">查看留言信息</a>
          </div>
        </li>
		<li>
          <h4  class="M7"><span></span>新闻中心</h4>
          <div class="list-item none">
            <a href='/newsController/toAddNewsPage' target="myview" >添加新闻</a>
            <a href='/newsController/getAllNewsByUser' target="myview" >查看新闻</a>
      
          </div>
        </li>
		<li>
          <h4   class="M8"><span></span>用户管理</h4>
          <div class="list-item none">
            <a href=''>添加用户</a>
            <a href=''>查看用户</a>
          </div>
        </li>
		
		<li>
          <h4   class="M9"><span></span>系统管理</h4>
          <div class="list-item none">
            <a href='/userController/loginOut'>退出系统</a>
          </div>
        </li>
  </ul>
		</div>
		<div class="m-right">
			<div class="right-nav">
					<ul>
							<li><img src="images/home.png"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">系统公告</a></li>
								<li>></li>
								<li><a href="#">最新公告</a></li>
						</ul>
			</div>
			<div class="main" >
				<iframe name="myview" width="100%" height="100%"></iframe>
			</div>
		</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2015 版权所有 京ICP备05019125号-10  来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p></div>
<script>navList(12);</script>
</body>
</html>
