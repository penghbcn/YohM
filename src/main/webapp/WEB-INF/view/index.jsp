<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="referrer" content="no-referrer" />

<title>MyNews</title>

<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/index.css" rel="stylesheet">

<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/common.js"></script>
<script src="${pageContext.request.contextPath }/js/nav.js"></script>
<script src="${pageContext.request.contextPath }/js/main.js"></script>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column" style="top: 50px">
				<nav id="nav"
					class="navbar navbar-default navbar-fixed-top navbar-inverse"
					role="navigation">
					<jsp:include page="./nav.jsp"></jsp:include>
				</nav>
				<!--  <div id="thumbnail" class="carousel slide">
               		 远程加载thumbnail.html至此"
            	</div> -->
				<div id="main" class="row clearfix">
					<!--远程加载main.html至此-->
				</div>
			</div>
		</div>
	</div>
</body>
</html>