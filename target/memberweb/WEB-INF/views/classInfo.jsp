<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%    
String path = request.getContextPath();    
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。    
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>班级管理</title>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<script type="text/javascript" src="${path}/js/jquery-3.1.1.min.js"></script>
<link href="${path}/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${path}/js/bootstrap.min.js">
</script>
</head>
<body class="container">
<form class="form-inline">
<h3 align="center" >班级列表</h3>
<div class="row">
  <div class="col-md-3">
  <div class="form-group">
    <label for="txt_tname">班级ID：</label>
    <input type="text" class="form-control" id="txt_tname" placeholder="请输入班级ID">
  </div>
  </div>
  <div class="col-md-3">
  <div class="form-group">
    <label for="txt_temail">班级名称：</label>
    <input type="email" class="form-control" id="txt_temail" placeholder="请输入班级名称">
  </div>
  </div>
  <div class="col-md-3">
  <div class="form-group">
    <label for="txt_temail">班级人数：</label>
    <input type="email" class="form-control" id="txt_temail" placeholder="请输入班级人数">
  </div>
  </div>
  <div class="col-md-1" style="text-align: left;">
  <a href="<%=request.getContextPath() %>/class/initAddPage" class="btn btn-primary" role="button">搜索</a>
  </div>
  <div class="col-md-2" style="text-align: right;">
  <a href="<%=request.getContextPath() %>/class/initAddPage" class="btn btn-primary" role="button">新增班级</a>
  </div>
</div>
    <table style="text-align: center;margin-top:15px;" class="table table-hover table-bordered table-striped">
        <tr style="text-align: center;">
            <td><strong>班级名称</strong></td>
            <td><strong>班级人数</strong></td>
            <td><strong>操作</strong></td>
        </tr>
        <c:forEach items="${AllClassModel}" var="classinfo">
        <tr>
            <td>${classinfo.classname}</td>
            <td>${classinfo.classcount}</td>
            <td>
                <a href="<%=request.getContextPath() %>/class/initViewPage?cid=${classinfo.classid}">查看</a>
                <a href="<%=request.getContextPath() %>/class/initEditPage?cid=${classinfo.classid}">编辑</a>
                <a href="<%=request.getContextPath() %>/class/deleteByTID?cid=${classinfo.classid}">删除</a>
            </td>
        </tr>
        </c:forEach>
    </table>
    
</form>
</body>
</html>