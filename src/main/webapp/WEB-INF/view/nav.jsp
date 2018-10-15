<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<div class="navbar-header">
    <a class="navbar-brand" href="/index"><img src="${pageContext.request.contextPath }/image/logo.png" height="50px"></a>
</div>

<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul id="newstype" class="nav navbar-nav">
        <li >
            <a href="/news">热门</a>
        </li>
        <li>
            <a href="/eco">经济</a>
        </li>
        <li>
            <a href="/fas">时尚</a>
        </li>
        <li>
            <a href="/food">美食</a>
        </li>
        <li>
            <a href="/game">游戏</a>
        </li>
        <li>
            <a href="/world">国际</a>
        </li>
        <li>
            <a href="/mil">军事</a>
        </li>
    </ul>

    <ul id="userinfo" class="nav navbar-nav navbar-right">
       <!--鏍规嵁ajax鑾峰彇鏄惁鐧婚檰鍔ㄦ�佸姞杞�-->
    </ul>
    <form class="navbar-form navbar-right" role="search" onsubmit="return search()">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="新闻"/>
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
    </form>
</div>
<script>
	$("a[href='/${href}']").parent().addClass("active");
</script>