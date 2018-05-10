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
					<form action="<%=path%>/members/Member_pay.action" autocomplete="on" method="post">
						<h1>确认支付信息</h1>
						<p>
							<label>房间ID</label>
							<input name="RId" value='<s:property value="#session.apply_room.RId"/>'
								readonly="readonly" required="required" type="text" placeholder="数据库ID" />
						</p>
						<p>
							<label>房号</label>
							<input name="roomNumber" value='<s:property value="#session.apply_room.roomNumber"/>'
								required="required" type="text" placeholder="房号" />
						</p>
						<p>
							<label>支付金额</label>
							<input name="price" value='<s:property value="#session.apply_room.price"/>'
								required="required" type="text" placeholder="价格" />
						</p>
						<p class="login button">
							<input type="submit" value="确认支付" />
						</p>
						<p class="change_link"></p>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>