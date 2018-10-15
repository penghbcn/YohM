$(function () {
	var channel = getchannel();
	refresh(channel);
});

function refresh(channel){
	var refreshId=0;
	getNews(channel,refreshId);

	$(window).scroll(function(){
		var scrollTop = $(this).scrollTop();
		var scrollHeight = $(document).height();
		var windowHeight = $(this).height();
		if(scrollTop + windowHeight == scrollHeight){
			refreshId += 1;
//			alert("refresh:"+channel);
			getNews(channel,refreshId);
		}
	});

}

function getNews(channel,refreshId) {
	$.post("/news/getNews/",{'channel':channel,'refreshId':refreshId},function (result) {
		var news = result.data;
		if(news==""){
			alert("到底了");
			return;
		}

		for (var i in news) {
			//  alert(news[i].newsId)
			if(news[i].covers==""){
				news[i].covers="v3/avatar.jpg";
			}
			var newsDiv = "<hr>"+
			"<div class='row clearfix'>" +
			"<div class='col-md-2 column'>" +
			"<img alt='140x140' src='"+news[i].covers+"'  width='140'/>" +
			"</div>" +
			"<div class='col-md-10 column'>" +
			"<h2>"+
			"<a href='javascript:news("+'"'+news[i].newsId+'"'+")'>" +
			news[i].title+
			"</a>" +
			"</h2>" +
			"<p>" +
			"新闻简介." +
			"</p>" +
			"<div class='col-md-2 column'>"+
			"<p><a class='btn' href="+news[i].url+">View details »</a></p>"+
			"</div >"+
			"<div class='col-md-8 column'>"+"</div>"+
			"<div class='col-md-2 column'>"+
			"<p>"+news[i].pdate+"</p>"+
			"</div>"+

			"</div>" +
			"</div>"
			$("#main").append(newsDiv);
		}
	});
//	$("#main").append("<hr>");
}

function news(newsId) {
	return location.href="/news/"+newsId;
}