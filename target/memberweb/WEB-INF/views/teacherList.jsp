<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师管理</title>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />

<link href="${path}/static/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="${path}/static/css/font-awesome.css?v=4.4.0"
	rel="stylesheet">
<link href="${path}/static/css/animate.css" rel="stylesheet">
<link href="${path}/static/css/style.css" rel="stylesheet">


</script>
</head>
<body class="container">
	<form class="form-inline">
		<h3 align="center">教师列表</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="form-group">
					<label for="txt_tname">姓名：</label> <input type="text"
						class="form-control" id="txt_tname" placeholder="请输入教师姓名">
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<label for="txt_temail">手机：</label> <input type="email"
						class="form-control" id="txt_temail" placeholder="请输入手机">
				</div>
			</div>
			<div class="col-md-3">
				<div class="form-group">
					<label for="txt_temail">邮箱：</label> <input type="email"
						class="form-control" id="txt_temail" placeholder="请输入邮箱">
				</div>
			</div>
			<div class="col-md-1" style="text-align: left;">
				<a href="<%=request.getContextPath()%>/teacher/initAddPage"
					class="btn btn-primary" role="button">搜索</a>
			</div>
			<div class="col-md-2" style="text-align: right;">
				<a href="<%=request.getContextPath()%>/teacher/initAddPage"
					class="btn btn-primary" role="button">新增教师</a>
			</div>
		</div>
		<table id="teacherTable" style="text-align: center; margin-top: 15px;"
			class="table table-hover table-bordered table-striped">
			<tr style="text-align: center;">
				<td><strong>姓名</strong></td>
				<td><strong>邮箱</strong></td>
				<td><strong>操作</strong></td>
			</tr>
			<c:forEach items="${AllTeacherModel}" var="teacher">
				<tr>
					<td>${teacher.tname}</td>
					<td>${teacher.temail}</td>
					<td>
						<%--  <a href="<c:url value='/CustomerServlet?method=preEdit&id=${cstm.id}'/> ">编辑</a>
                <a href="<c:url value='/CustomerServlet?method=delete&id=${cstm.id}'/> ">删除</a> --%>
						<a
						href="<%=request.getContextPath() %>/teacher/initViewPage?tid=${teacher.tid}">查看</a>
						<a
						href="<%=request.getContextPath() %>/teacher/initEditPage?tid=${teacher.tid}">编辑</a>
						<a
						href="<%=request.getContextPath() %>/teacher/deleteByTID?tid=${teacher.tid}">删除</a>
					</td>
				</tr>
			</c:forEach>
		</table>

	</form>

	<script type="text/javascript" src="${path}/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="${path}/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${path}/static/js/plugins/jeditable/jquery.jeditable.js"></script>

	<!-- Data Tables -->
	<script type="text/javascript"
		src="${path}/static/js/plugins/dataTables/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="${path}/static/js/plugins/dataTables/dataTables.bootstrap.js"></script>

	<!-- 自定义js -->
	<script type="text/javascript"
		src="${path}/static/js/content.js?v=1.0.0"></script>

	<script>
		$(document).ready(function() {
			$('.dataTables-example').dataTable();
		});
	</script>
</body>
</html>
