<%@page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<div class="address">
	<div class="footer">
		<div class="gulid">
			Copyright 2019 505科技有限公司 All Rights.
			<br/>
			<a href="#" style="color:red">505科技有限公式</a> 技术支持
			<a href="<%=basePath%>/login.mvc" style="color:red">后台</a>
			<br/>
			没得备号...<a href="ProjectIntroduce.html" style="color:red">点击这里查看网页项目介绍</a>
		</div>
	</div>
</div>