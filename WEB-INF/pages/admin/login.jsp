<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>

<!DOCTYPE html>
<html>
	<head lang="en">
		<meta charset="UTF-8">
		<title>505科技有限公司</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link rel="stylesheet" href="admin/css/amazeui.min.css" />
		<style>
		
.header {
	text-align: center;
}

.header h1 {
	font-size: 200%;
	color: #333;
	margin-top: 30px;
}

.header p {
	font-size: 14px;
}
</style>
	</head>
	<body>
		
		<div class="header">
			<div class="am-g">
				<h1>
					505科技有限公司
				</h1>
			</div>
			<hr />
		</div>
		
		<div class="am-g">
			<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
				<mvc:form action="validateLogin.mvc" modelAttribute="user" class="am-form login-form" onSubmit="return LoginCheck()">
					<mvc:label path="userName">用户名:</mvc:label>
					<mvc:input path="userName" id="User" />
					<br/>
					<mvc:label path="userPwd">密码:</mvc:label>
					<mvc:password path="userPwd"  id="Pwd" />
					<br/>

					<br />
					<div class="am-cf">
					
					<input type="submit" value="登 录" id="save"	class="am-btn am-btn-primary am-btn-sm am-fl">

					</div>
				</mvc:form>
				<br/>
				<label style="color:red"> ${tip} </label>
			</div>
		</div>
		
	</body>

	<script src="admin/js/jquery.min.js"></script>
	<script src="admin/js/amazeui.min.js"></script>
<script>
function LoginCheck() 
{   

    var LoginCheck = false;
    if($("#User").val()==="" || $("#Pwd").val()===""){
		alert("用户名或密码不能为空!");
        return false;
	}
    
    return true;
}
</script>
	<!--<![endif]-->
</html>