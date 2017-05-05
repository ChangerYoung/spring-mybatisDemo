<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑班级</title>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<script type="text/javascript" src="${path}/js/jquery-3.1.1.min.js"></script>
<link href="${path}/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${path}/js/bootstrap.min.js">
</script>
</head>
<body class="container">
<form action="<%=request.getContextPath() %>/class/editClassInfo" method="post">
<div class="form-group">
    <label for="txt_tname">班级名称:</label>
    <input type="text" class="form-control" value="${classinfo.classname}" id="txt_tname" name="classname" placeholder="请输入班级名称">
    <input type="hidden" value="${classinfo.classid}" name="classid">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">班级人数:</label>
    <input type="text" class="form-control" value="${classinfo.classcount}" id="txt_temail" name="classcount" placeholder="请输入班级人数">
  </div>
  <div style="text-align: center;">
  <input type="submit" class="btn btn-default" value="提交" />
  <a class="btn btn-default" href="<%=request.getContextPath()%>/class/backToList" role="button">返回</a>
  </div>
</form>
</body>
</html>