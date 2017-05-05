<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量    
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=path%>/static/css/bootstrap.min.css?v=3.3.6"
	rel="stylesheet">
<link href="<%=path%>/static/css/font-awesome.css?v=4.4.0"
	rel="stylesheet">
<link href="<%=path%>/static/css/animate.css" rel="stylesheet">
<link href="<%=path%>/static/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
	<form action="<%=path%>/user/editsubmit" method="POST" class="row">
		<div class="col-sm-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>修改账户</h5>
				</div>
				<div class="ibox-content">
					<div class="form-horizontal m-t">

						<input type="hidden" name="id" value="${user.id}" />
						<div class="form-group">
							<label class="col-sm-3 control-label">用户名：</label>
							<div class="col-sm-8">
								<input id="cname" type="text" class="form-control" minlength="2"
									required="" aria-required="true" value="${user.username}"
									name="username" />
							</div>
						</div>
						 <div class="form-group">
                                <label class="col-sm-3 control-label">密码：</label>
                                <div class="col-sm-8">
                                    <input id="password" name="password" class="form-control" type="password">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">确认密码：</label>
                                <div class="col-sm-8">
                                    <input id="confirm_password" name="password2" class="form-control" type="password">
                                    <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 请再次输入您的密码</span>
                                </div>
                            </div>
						 <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-3">
                                    <button class="btn btn-primary" type="submit">提交</button>
                                </div>
                            </div>
						

						<!-- 密码：<input type="password" name="password" /><br> 确认密码：<input
							type="password" name="password2" /><br>  --><!-- <input
							type="submit" value="提交"> -->

					</div>
				</div>

			</div>
		</div>
	</form>
</body>
</html>