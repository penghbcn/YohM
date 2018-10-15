function getchannel(){
	var channel = $("#newstype .active").text().trim();
	if(channel=='热门'){
		channel='news';
	}else if(channel=='经济'){
		channel='eco';
	}else if(channel=='时尚'){
		channel='fas';
	}else if(channel=='美食'){
		channel='food';
	}else if(channel=='游戏'){
		channel='game';
	}else if(channel=='国际'){
		channel='world';
	}else if(channel=='军事'){
		channel='mil';
	}else{
		return;
	}
//	alert("getChannel:"+channel);
	return channel;
}

function search() {
	alert("TODO ajax");
	return false;
}

function login() {
	return location.href="/page/login.html";
}

function register() {
	return location.href="/page/register.html";
}

function index() {
	return location.href="/index.html";
}
