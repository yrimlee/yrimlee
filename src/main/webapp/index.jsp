<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String content = request.getParameter("content");
	if(content==null){
		content = "/include/mainContents.jsp";
	}
%>	
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="portfolio, Float, Montblanc template">
    <title>웹 애플리케이션</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- JS 플러그인 파일 -->
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <!-- prefix 자동설정 -->
    <script src="./js/prefixfree.min.js"></script>
    <!-- 기본 코딩 파일 -->
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/notosans_kr_CDN.css">
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/index.css">
</head>
<body>
    <div id="wrap" class="card-body">
		<header>
			<jsp:include page="/include/header.jsp" />
		</header>
		<main role="main">
			<section class="contents">
				<jsp:include page="<%=content %>" />
			</section>
		</main>
		<footer>
			<jsp:include page="/include/footer.jsp" />
		</footer>
    </div>
</body>
</html>