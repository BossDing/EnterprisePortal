<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<!doctype html>
<html class="no-js">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>505科技有限公司</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp">
		<meta http-equiv="Content-Type" content="text/html; charset=GBK">
		<link rel="stylesheet"
			href="admin/css/amazeui.min.css">
		<link rel="stylesheet" href="admin/css/admin.css">
	</head>
	<body>
		<header class="am-topbar admin-header">
		<div class="am-topbar-brand">
			<strong>505科技</strong>
			<small>后台管理</small>
		</div>

		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span>
			<span class="am-icon-bars"></span>
		</button>

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">

				<li class="am-dropdown" data-am-dropdown>
					<a class="am-dropdown-toggle" data-am-dropdown-toggle
						href="javascript:;"> <span class="am-icon-users"></span>
						<!-- 显示当前用户 -->
						${user.userName}，欢迎您 <span class="am-icon-caret-down"></span> </a>
					<ul class="am-dropdown-content">
						<li>
							<a href="#"><span class="am-icon-power-off"></span>
								退出</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		</header>

		<div class="am-cf admin-main">
			<!-- sidebar start -->
			<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
				<div class="am-offcanvas-bar admin-offcanvas-bar">
					<ul class="am-list admin-sidebar-list">
						<li>
							<a href="newsManagePage.mvc?userId=${user.userId}&start=0&number=5" title="新闻管理">
								<span class="am-icon-pencil-square-o"></span> 
								新闻管理
							</a>
						</li>
					<!--
						<li>
							<a href="adminUser.jsp" title="管理员管理"><span
								class="am-icon-bookmark"></span> 管理员管理</a>
						</li>
					-->
						<li>
							<a href="index.mvc" title="返回主页"><span
								class="am-icon-bookmark"></span> 返回主页</a>
						</li>
					
					</ul>

					<div class="am-panel am-panel-default admin-sidebar-panel">
						<div class="am-panel-bd">
							<p>
								 公告
							</p>
							<p>
								技术支持：505科技
							</p>
						</div>
					</div>

				</div>

			</div>
			<!-- sidebar end -->

			<!-- content start -->
			<div class="admin-content">

				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong>后台管理</strong>/
						<strong>新闻管理</strong>
					</div>
				</div>
				
				<div class="am-g">

					<div class="am-u-sm-12 am-u-md-6">
						<div class="am-btn-toolbar">
							<div class="am-btn-group am-btn-group-xs">
								<button type="button" class="am-btn am-btn-success"
									data-am-modal="{target: '#new-popup'}">
									<span class="am-icon-plus"></span> 添加新闻
								</button>
							</div>
						</div>
					</div>
				</div>

				<div class="am-g" style="height: 300px">
					<div class="am-u-sm-12">
						<form class="am-form">
							<table
								class="am-table am-table-striped am-table-hover table-main">
								<thead>
									<tr>
										<th class="table-id">
											序号
										</th>

										<th class="table-title">
											新闻标题
										</th>
										<th class="table-title">
											创建人
										</th>
										<th class="table-author ">
											创建时间
										</th>
										
										<th class="table-author ">
											操作
										</th>
									</tr>
								</thead>
								<tbody>
									<!-- 显示数据库新闻 -->
									<c:forEach items="${newsList}" var="news">
										<tr>
											<td class="table-id">${news.newsId}</td>
											<td>${news.newsTitle}</td>
											<td class="table-title">${news.publisher.userName}</td>
											<td class="table-title">${news.newsTime}</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<input type="hidden" value="${news.newsId}">
														<input type="hidden" value="${news.newsContent}">
														<input type="hidden" value="${news.newsTitle}">
														<a onclick="edit(this);" class="am-btn am-btn-primary am-btn-xs" href="javascript:void(0);">
															<span></span>修改
														</a> 
														<a rel="${news.newsId}" onclick="del(this);" class="am-btn am-btn-danger am-btn-xs" href="javascript:void(0);">
															<span></span>删除
														</a>
													</div>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</form>
					</div>

				</div>
			</div>
			<!-- content end -->

		</div>

		<div class="am-popup" id="new-popup">
			<div class="am-popup-inner">
				<div class="am-popup-hd">
					<h4 class="am-popup-title">
						添加新闻
					</h4>
					<span data-am-modal-close class="am-close">&times;</span>
				</div>

				<div class="am-popup-bd">
					<mvc:form action="addNews.mvc?userId=${user.userId}" modelAttribute="news" class="am-form" id="new-msg">
						<fieldset>
							<div class="am-form-group">
								<mvc:label path="newsTitle" for="doc-vld-ta-2-1">
									新闻标题：
								</mvc:label>
								<mvc:input path="newsTitle" maxlength="62" placeholder="请输入新闻标题" data-validation-message="不能为空" required="required" />
							</div>
							<div class="am-form-group">
								<mvc:label path="newsContent" for="doc-vld-ta-2-1">
									新闻内容：
								</mvc:label>
								<mvc:textarea path="newsContent" cols="30" rows="16"
									placeholder="请输入新闻内容。" data-validation-message="不能为空" required="required"></mvc:textarea>
							</div>
							
							<!--<input name="Action" type="hidden" value="Add">-->
							
							<button class="am-btn am-btn-secondary" type="submit">
								提交
							</button>
							<button onclick='javascript:$("#new-popup").modal("close");' class="am-btn am-btn-secondary" type="button">
								关闭
							</button>
						</fieldset>
					</mvc:form>
				</div>

			</div>
		</div>
		
		<div class="am-popup" id="edit-popup">
			<div class="am-popup-inner">
				<div class="am-popup-hd">
					<h4 class="am-popup-title">
						修改新闻
					</h4>
					<span data-am-modal-close class="am-close">&times;</span>
				</div>

				<div class="am-popup-bd">
					<mvc:form action="editNews.mvc?userId=${user.userId}" modelAttribute="news" class="am-form" id="edit-msg">
						<fieldset>
							<div class="am-form-group">
								<label for="doc-vld-ta-2-1">
									新闻标题：
								</label>
								<mvc:input path="newsTitle" id="upd_NewsTitle" name="upd_NewsTitle" type="text" maxlength="62"
									placeholder="请输入新闻标题" data-validation-message="不能为空" required="required" />
							</div>
							<div class="am-form-group">
								<label for="doc-vld-ta-2-1">
									新闻内容：
								</label>
								<mvc:textarea path="newsContent" id="upd_NewsContent" name="upd_NewsContent"  cols="30" rows="16"
									placeholder="请输入新闻内容" data-validation-message="不能为空" required="required"></mvc:textarea>
							</div>
							
							<input name="Action" type="hidden" value="Edit">
							<input id="newsId" name="newsId" type="hidden" value="">
							
							<button class="am-btn am-btn-secondary" type="submit">
								提交
							</button>
							<button onclick='javascript:$("#edit-popup").modal("close");'
								class="am-btn am-btn-secondary" type="button">
								关闭
							</button>
						</fieldset>
					</mvc:form>
				</div>

			</div>
		</div>


		<a class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
			data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

		<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirm">
			<div class="am-modal-dialog">
				<div class="am-modal-bd">
					确定要删除当前主题吗？
				</div>
				<div class="am-modal-footer">
					<span class="am-modal-btn" data-am-modal-cancel>取消</span>
					<span class="am-modal-btn" data-am-modal-confirm>确定</span>
				</div>
			</div>
		</div>
		<footer>
		<hr>
		<p class="am-padding-left">
			© 2016 505科技
		</p>
		</footer>

		
		<script src="admin/js/jquery.min.js">
</script>
	<script src="admin/js/amazeui.min.js">
</script>
		<script>
		
		function jumpMenu(s1,s2,s3){
			var pageURL =$('#ipage option:selected').val();
			window.location.href=pageURL; 
		} 
		
		</script>
		<script>
$(function() {
    
	$('#new-msg').validator(
			{
				onValid : function(validity) {
					$(validity.field).closest('.am-form-group').find(
							'.am-alert').hide();
				},

				onInValid : function(validity) {
					var $field = $(validity.field);
					var $group = $field.closest('.am-form-group');
					var $alert = $group.find('.am-alert');
					
				var msg = $field.data('validationMessage')
						|| this.getValidationMessage(validity);

				if (!$alert.length) {
					$alert = $('<div class="am-alert am-alert-danger"></div>')
							.hide().appendTo($group);
				}

				$alert.html(msg).show();
			}
			});


	$('#edit-msg').validator(
			{
				onValid : function(validity) {
					$(validity.field).closest('.am-form-group').find(
							'.am-alert').hide();
				},

				onInValid : function(validity) {
					var $field = $(validity.field);
					var $group = $field.closest('.am-form-group');
					var $alert = $group.find('.am-alert');
					
				var msg = $field.data('validationMessage')
						|| this.getValidationMessage(validity);

				if (!$alert.length) {
					$alert = $('<div class="am-alert am-alert-danger"></div>')
							.hide().appendTo($group);
				}

				$alert.html(msg).show();
			}
			});

});

function del(obj) {
	$('#my-confirm').modal( {
		relatedTarget : this,
		onConfirm : function(options) {
			var delId = $(obj).attr("rel");
			window.location.href = "delNews.mvc?userId=${user.userId}&newsId=" + delId;
		},
		onCancel : function() {
		}
	});
}

function edit(obj) {
	var _obj=$(obj);
	var newsTitle = _obj.prev().val();
	var NewsContent=_obj.prev().prev().val();
	var NewsId=_obj.prev().prev().prev().val();
	$('#upd_NewsTitle').val(newsTitle);
	$('#upd_NewsContent').val(NewsContent);
	$('#newsId').val(NewsId);
	$('#edit-popup').modal();
}
</script>
	</body>
</html>
