<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MyNews</title>

<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"
	rel="stylesheet">

<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/common.js"></script>
<script src="${pageContext.request.contextPath }/js/nav.js"></script>

</head>
<body>
	<div class="container">
		<div class="row clearfix" style="top: 50px">
			<div class="col-md-12 column" style="top: 50px">
				<nav id="nav"
					class="navbar navbar-default navbar-fixed-top navbar-inverse"
					role="navigation">
					<jsp:include page="./nav.jsp"></jsp:include>
				</nav>
				<div class="page-header">
					<h1>${news.title }</h1>
				</div>
				<ul class="breadcrumb">
					<li><a href="/index">首页</a></li>
					<li class="active">${news.channel }</li>
				</ul>
				<c:forEach items="${news.details }" var="p">
					<p>
						<c:out value="${p }" />
					</p>
				</c:forEach>
			</div>
		</div>
		<div class="page-header"></div>
		<div class="row clearfix" style="top: 50px">
			<div class="col-md-9 column">
				<div class="row clearfix">
					<c:forEach items="${news.keywords }" var="text">
						<div class="col-md-1 column">
							<span class="label label-default">${text }</span>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="col-md-2 column">
				<a href='${news.url }'>查看原网页</a>
			</div>
			<div class="col-md-1 column"></div>
		</div>
		<hr>
		<div class="col-md-1 column"></div>
		<div class="col-md-10 column">
			<c:forEach var="i" begin="1" end="5">
				<p>
					<c:out value="${i }" />
				</p>
				<hr>
			</c:forEach>
		</div>
		<div class="col-md-1 column"></div>
		<div class="row clearfix" style="top: 50px">
			<div class="col-md-1 column"></div>
			<div class="col-md-10 column">
				<form role="form">
					<div class="form-group">
						<label for="textarea">发表评论</label>
						<textarea type="text" class="form-control" id="textarea" cols="60"
							rows="10" maxlength="500" wrap="virtual" style="resize: none"
							placeholder="请输入评论~~~"></textarea>
					</div>
					<div class="col-md-9 column"></div>
					<div class="col-md-3 column">
						<button type="submit" class="btn btn-warning">Submit</button>
					</div>
				</form>
			</div>
			<div class="col-md-1 column"></div>
		</div>
	</div>
</body>
</html>