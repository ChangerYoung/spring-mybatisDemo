<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%    
String path = request.getContextPath();    
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。    
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=path %>/skill/addSkill" method="post">
		<input type="hidden" value="${skillId }" name="skillFlag" />
		<input type="submit" value="添加" />
	</form>
<table border="1" style="text-align: center">
		<thead>
			<tr>
				<td>技能种类</td>
				<td>操作</td>
			</tr>
		</thead>
		<c:forEach items="${childSkillModel }" var="skill">
			<tr>
				<td>${skill.skillName }</td>
				<td>
					<a href="<%=path%>/skill/editSkill?skillId=${skill.skillId  }" >编辑</a>
					<a href="<%=path %>/skill/deleteSkill?skillId=${skill.skillId }">删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>	
</body>
</html>