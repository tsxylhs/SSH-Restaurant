<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
	<title>酒店管理系统</title>
	<link rel="stylesheet" href="../css/style.css">
	<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="application/x-javascript"> 
			addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); 
			function hideURLbar(){ window.scrollTo(0,1); } 
		</script>
		<script src="../js/jquery.min.js">
		</script>
		<script src="../js/WdatePicker.js">
		</script>
		<script>$(document).ready(function(c) {
			$('.alert-close').on('click', function(c){
			$('.sign-up-agileinfo').fadeOut('slow', function(c){
	  		$('.sign-up-agileinfo').remove();
			});
			});	  
			});
		</script>
		<script>$(document).ready(function(c) {
			$('.alert-close1').on('click', function(c){
			$('.sign-in-w3ls').fadeOut('slow', function(c){
	  		$('.sign-in-w3ls').remove();
			});
			});	  
			});
		</script>
</head>
	<s:if test="#session.signIn=='true'.toString()">
		<script type="text/javascript">alert("注册成功");</script>
		<% session.setAttribute("signIn","false"); %>
	</s:if>
<body>
	<h1>欢迎您使用酒店管理系统</h1>
	<div class="container" >
		<div class="sign-up-agileinfo" >
			<div class="alert-close"> </div>
			<h3>酒店用户注册</h3>
			<form action="<%=path%>/members/Member_signIn.action" method="post">	
				<input type="text"  name="username" placeholder="用户名" required="required">		
				<input type="password" name="password" placeholder=密码 required="required">
				<input type="password" name="confirm password" placeholder="确认密码" required="required">
				<input type="submit" value="注册" >				
			</form>
			<form action="<%=path%>/restaurant/index.html" method="post">
				<input type="submit" value="返回酒店主页" >				
			</form>
		</div>
		<div class="sign-in-w3ls">
			<div class="alert-close1"> </div>
			<h3>登录</h3>
			<form action="<%=path%>/login/Login_login.action" method="post">			
				<input type="text" name="username" placeholder="用户名" required="required">
				<input type="password" name="password" placeholder="密码" required="required">
				<div class="clear"></div>
				<input type="submit" value="登录">	
			</form>
		</div>
		<div class="clear"></div>
		<div class="footer-agilew3">
			<p> &copy; 2017 Restaurant Management(V1.0). All Rights Reserved | Design by wuguowei</p>
		</div>
	</div>
</body>
</html>