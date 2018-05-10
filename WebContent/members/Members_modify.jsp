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
					<form action="<%=path%>/members/Member_update.action" autocomplete="on" method="post">
						<h1>会员详细资料</h1>
						<p>
							<label>ID(不允许修改)</label>
							<input name="MId" value='<s:property value="#session.member.MId"/>'
								readonly="readonly" required="required" type="number" placeholder="ID" />
						</p>
						<p>
							<label>用户名</label>
							<input name="username" value='<s:property value="#session.member.username"/>'
								required="required" type="text" placeholder="用户名" />
						</p>
						<p>
							<label>密码</label>
							<input name="password" value='<s:property value="#session.member.password"/>'
								required="required" type="text" placeholder="密码" />
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