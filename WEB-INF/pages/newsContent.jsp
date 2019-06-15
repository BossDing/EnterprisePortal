<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>505科技有限公司</title>
		<link href="css/main.css" rel="stylesheet" type="text/css">
		<link href="css/container.css" rel="stylesheet" type="text/css">
		<link href="css/reset.css" rel="stylesheet" type="text/css">
		<link href="css/screen.css" rel="stylesheet" type="text/css">
		<script src="js/jquery.min.js">
</script>
		<script src="js/tab.js">
</script>
	</head>

	<body>
		<%@ include file="common_header.jsp"%>

		<!--banner-->
		<div class="second_banner">
			<img src="img/4.gif" alt="">
		</div>
		<!--//banner-->
		<!--新闻-->
		<div class="container">
	<div class="left">
        <div class="menu_plan">
            <div class="menu_title">公司动态<br><span>news of company</span></div>
			 <ul id="tab">
                <li ><a href="#">公司新闻</a></li>
            </ul>
        </div>
     </div>
     <div class="right">
            <div class="location">
                <span>当前位置：<a href="javascript:void(0)" id="a"><a href="#">公司新闻</a></a></span>
                <div class="brief" id="b"><a href="#">公司新闻</a></div>
            </div>
				<div style="font-size: 14px; margin-top: 53px; line-height: 36px;">
					<div id="tab_con">
						<div id="tab_con_2" class="dis-n" style="display: none;">
							<div class="content_main">
								<!-- 新闻内容 -->
								<!--
								<div class="container-fluid">
									<div class="row">
										<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5">&nbsp;</div><div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">${news.newsTitle}</div>
									</div>
									<div class="row">
										<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">&nbsp;</div><div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">${news.newsContent}</div>
									</div>
									<div class="row">
										<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">&nbsp;</div><div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">${news.newsTime}</div>
									</div>
									<div class="row">
										<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">&nbsp;</div><div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">发布人：${news.publisher.userName}</div>
									</div>
								</div>
								-->
								
								<table style="boder:0px">
									<tr><td width="2%"></td><td width="80%"></td><td width="18%"></td></tr>
									<tr><td>&nbsp;&nbsp;</td><td>${news.newsTitle}</td><td>&nbsp;&nbsp;</td></tr>
									<tr><td>&nbsp;&nbsp;</td><td>${news.newsContent}</td><td>&nbsp;&nbsp;</td></tr>
									<tr><td>&nbsp;&nbsp;</td><td></td><td>${news.newsTime}</td></tr>
									<tr><td>&nbsp;&nbsp;</td><td></td><td>发布人：${news.publisher.userName}</td></tr>
								</table>
								
							</div>
						</div>

					</div>
				</div>
			</div>
</div>
		<!--//新闻-->
		<!--底部-->
		<%@ include file="common_footer.jsp"%>
		<%@ include file="copy_information.jsp"%>
	</body>

	<!--//底部-->
	<script>
tabs("#tab", "active", "#tab_con");
</script>


	
</script>

</html>
