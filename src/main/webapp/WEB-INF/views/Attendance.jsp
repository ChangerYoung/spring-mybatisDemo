<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
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

<!-- Data Tables -->
<link
	href="<%=path%>/static/css/plugins/dataTables/dataTables.bootstrap.css"
	rel="stylesheet">

<link href="<%=path%>/static/css/animate.css" rel="stylesheet">
<link href="<%=path%>kjl/static/css/style.css" rel="stylesheet">
</head>
<body class="gray-bg">
	<form class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>表格</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a> 
							<a class="dropdown-toggle" data-toggle="dropdown"
								href="#"> <i class="fa fa-wrench"></i>
							</a>
							<ul class="dropdown-menu dropdown-user">
								<li><a href="#">选项1</a></li>
								<li><a href="#">选项2</a></li>
							</ul>
							<a class="close-link"> <i class="fa fa-times"></i>
							</a>
						</div>
					</div>

					<div class="ibox-content">
						<div class="">
							<a onclick="fnClickAddRow();" href="add"
								class="btn btn-primary ">添加行</a>
						</div>
						<table class="table table-striped table-bordered table-hover "
							id="editable">
							<thead>
								<tr>
									<td>number</td>
									<td>name</td>
									<td>sign in reason</td>
									<td>sign in time</td>
									<td>sign out reason</td>
									<td>sign out time</td>
									<td>option</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${attendances}" var="attendance" varStatus="status">
									<tr class="gradeA">
										<td>${status.index}</td>
										<td>${attendance.childname}</td>
										<td>${attendance.signintime}</td>
										<td>${attendance.signinreason}</td>
										<td>${attendance.signouttime}</td>
										<td>${attendance.signoutreason}</td>
										<td class=center><a href="edit?id=${attendance.id} ">编辑</a>&nbsp&nbsp<a
											href="delete?id=${attendance.id} ">删除</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</form>

	<!-- 全局js -->
	<script src="<%=path%>/static/js/jquery.min.js?v=2.1.4"></script>
	<script src="js/bootstrap.min.js?v=3.3.6"></script>



	<script src="<%=path%>/static/js/plugins/jeditable/jquery.jeditable.js"></script>

	<!-- Data Tables -->
	<script
		src="<%=path%>/static/js/plugins/dataTables/jquery.dataTables.js"></script>
	<script
		src="<%=path%>/static/js/plugins/dataTables/dataTables.bootstrap.js"></script>

	<!-- 自定义js -->
	<script src="<%=path%>/static/js/content.js?v=1.0.0"></script>


	<!-- Page-Level Scripts -->
	<script>
        $(document).ready(function () {
            $('.dataTables-example').dataTable();
            /* Init DataTables */
            var oTable = $('#editable').dataTable();

            /* Apply the jEditable handlers to the table */
          /*   oTable.$('td').editable('../example_ajax.php', {
                "callback": function (sValue, y) {
                    var aPos = oTable.fnGetPosition(this);
                    oTable.fnUpdate(sValue, aPos[0], aPos[1]);
                },
                "submitdata": function (value, settings) {
                    return {
                        "row_id": this.parentNode.getAttribute('id'),
                        "column": oTable.fnGetPosition(this)[2]
                    };
                },

                "width": "90%",
                "height": "100%"
            });


        }); */

        function fnClickAddRow() {
            $('#editable').dataTable().fnAddData([
                "Custom row",
                "New row",
                "New row"]);

        }});
    </script>
</body>
</html>