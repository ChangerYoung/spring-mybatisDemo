<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看教师</title>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<script type="text/javascript" src="${path}/js/jquery-3.1.1.min.js"></script>
<link href="${path}/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${path}/js/bootstrap.min.js">
</script>
</head>
<body class="container">
<form>
<div class="form-group">
    <label for="txt_tname">姓名:</label>
    <input type="text" class="form-control" id="txt_tname" value="${teacher.tname}" name="tname" >
    <input type="hidden" value="${teacher.tid}" name="tid">
					<input type="hidden" value="${teacher.gid}" name="gid">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">邮箱:</label>
    <input type="email" class="form-control" value="${teacher.temail}" id="txt_temail" name="temail">
  </div>
  <div style="text-align: center;">
  <a class="btn btn-default" href="<%=request.getContextPath()%>/teacher/backToList" role="button">返回</a>
  </div>
		
</form>
</body>
</html>