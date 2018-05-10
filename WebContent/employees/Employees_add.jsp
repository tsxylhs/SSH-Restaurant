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
					<form action="<%=path%>/employees/Employee_add.action" autocomplete="on" method="post">
						<h1>添加新的员工信息</h1>
						<p>
							<label>姓名</label>
							<input name="name" required="required" type="text" placeholder="姓名" />
						</p>
						<p>
							<label>性别</label>
							<input name="gender" required="required" type="text" placeholder="性别" />
						</p>
						<p>
							<label>年龄</label>
							<input name="age" required="required" type="number" placeholder="年龄" />
						</p>
						<p>
							<label>工龄</label>
							<input name="employeeYear" required="required" type="number" placeholder="工龄" />
						</p>
						<p>
							<label>工资</label>
							<input name="salary" required="required" type="number" placeholder="工资" />
						</p>
						<p>
							<label>年终奖</label>
							<input name="FSalary" required="required" type="number" placeholder="年终奖" />
						</p>
						<p class="login button">
							<input type="submit" value="添加" />
						</p>
						<p class="change_link"></p>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
