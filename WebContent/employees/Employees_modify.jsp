<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../css/demo.css" />
<link rel="stylesheet" type="text/css" href="../css/style2.css" />
<link rel="stylesheet" type="text/css" href="../css/animate-custom.css" />
<body>
	<div class="container" style="margin-top: 50px;">
		<div id="container_demo">
			<div id="wrapper">
				<div id="login" class="animate form">
					<form action="<%=path%>/employees/Employee_update.action" autocomplete="on" method="post">
						<h1>员工详细资料</h1>
						<p>
							<label>工号(不允许修改)</label>
							<input name="employeeId" value='<s:property value="#session.employee.employeeId"/>'
								readonly="readonly" required="required" type="number" placeholder="工号" />
						</p>
						<p>
							<label>姓名</label>
							<input name="name" value='<s:property value="#session.employee.name"/>'
								required="required" type="text" placeholder="姓名" />
						</p>
						<p>
							<label>性别</label>
							<input name="gender" value='<s:property value="#session.employee.gender"/>'
								required="required" type="text" placeholder="性别" />
						</p>
						<p>
							<label>年龄</label>
							<input name="age" value='<s:property value="#session.employee.age"/>'
								required="required" type="number" placeholder="年龄" />
						</p>
						<p>
							<label>工龄</label>
							<input name="employeeYear" value='<s:property value="#session.employee.employeeYear"/>'
								required="required" type="number" placeholder="工龄" />
						</p>
						<p>
							<label>工资</label>
							<input name="salary" value='<s:property value="#session.employee.salary"/>'
								required="required" type="number" placeholder="工资" />
						</p>
						<p>
							<label>年终奖</label>
							<input name="FSalary" value='<s:property value="#session.employee.FSalary"/>'
								required="required" type="number" placeholder="年终奖" />
						</p>
						<p class="login button">
							<input type="submit" value="修改" />
						</p>
						<p class="change_link"></p>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>