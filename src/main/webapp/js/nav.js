$(function () {
	//给所有li添加点击事件
	$("#newstype").on('click', 'li', function () {
		$("#main").html("");
		var channel = getchannel();
		refresh(channel);
	});

	$("#userinfo").load("/user/checkLogin", function (result) {
		var obj = result;
		//alert(obj)
		if (obj.status==200) {
			$("#userinfo").html("");
			$("#userinfo").html(
					"<li><a href='javascript:login()'>登录</a></li>" +
					"<li><a href='javascript:register()'>免费注册</a></li>"
			);
		} else {
			$("#userinfo").html("");
			$("#userinfo").html(
					"<li class='dropdown'>" +
					"<a href='#' class='dropdown-toggle' data-toggle='dropdown'>用户信息<strong " +
					"class='caret'></strong></a>" +
					"<ul class='dropdown-menu'>" +
					"<li><a href='#'>我的收藏</a></li>" +
					"<li><a href='#'>我的消息</a></li>" +
					"<li class='divider'></li>" +
					"<li><a href='#'>修改密码</a></li>" +
					"<li><a href=\"#\">退出登录</a></li>" +
					"</ul>" +
					"</li>"
			);
		}
	});
});

