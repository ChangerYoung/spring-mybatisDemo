<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>
<h2><a href="index/login">login</a></h2>
<h2><a href="<c:url value='/class/getClassInfoList'/>">班级管理</a></h2>
<h2><a href="<c:url value='/teacher/getListByGID'/>">教师管理</a></h2>
</body>
</html>
