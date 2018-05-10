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
					<form action="<%=path%>/rooms/Room_add.action" autocomplete="on" method="post">
						<h1>添加新的房间</h1>
						<p>
							<label>房号</label>
							<input name="roomNumber" required="required" type="text" placeholder="房号" />
						</p>
						<p>
							<label>价格</label>
							<input name="price" required="required" type="text" placeholder="价格" />
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