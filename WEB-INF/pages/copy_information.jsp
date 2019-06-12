<%@page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<div class="address">
	Copyright 2019 505科技有限公司 All Rights.
	<br/>
	<a href="#" style="color:red">505科技有限公式</a> 技术支持
	<a href="<%=basePath%>/admin.mvc" style="color:red">后台</a>
	<br/>
	没得备号...
</div>