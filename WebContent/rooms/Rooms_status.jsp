<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8">
<script src="../js/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="../css/default.css" />
<style type="text/css">
* {
	background: none repeat scroll 0 0 transparent;
	border: 0 none;
	margin: 0;
	padding: 0;
	vertical-align: baseline;
	font-family: 微软雅黑;
	overflow: hidden;
}

#navi {
	width: 100%;
	position: relative;
	word-wrap: break-word;
	border-bottom: 1px solid #065FB9;
	margin: 0;
	padding: 0;
	height: 40px;
	line-height: 40px;
	vertical-align: middle;
	background-image: -moz-linear-gradient(top, #EBEBEB, #BFBFBF);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),
		color-stop(1, #BFBFBF));
}

#naviDiv {
	font-size: 14px;
	color: #333;
	padding-left: 10px;
}

#tips {
	margin-top: 10px;
	width: 100%;
	height: 40px;
}

#buttonGroup {
	padding-left: 10px;
	float: left;
	height: 35px;
}

.button {
	float: left;
	margin-right: 10px;
	padding-left: 10px;
	padding-right: 10px;
	font-size: 14px;
	width: 70px;
	height: 30px;
	line-height: 30px;
	vertical-align: middle;
	text-align: center;
	cursor: pointer;
	border-color: #77D1F6;
	border-width: 1px;
	border-style: solid;
	border-radius: 6px 6px;
	-moz-box-shadow: 2px 2px 4px #282828;
	-webkit-box-shadow: 2px 2px 4px #282828;
	background-image: -moz-linear-gradient(top, #EBEBEB, #BFBFBF);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),
		color-stop(1, #BFBFBF));
}

#mainContainer {
	padding-left: 10px;
	padding-right: 10px;
	text-align: center;
	width: 98%;
	font-size: 12px;
	overflow: scroll;
	height: 750px;
}
</style>

<body>
	<form id="seachForm" method="post" style="display: none;"></form>
	<div id="navi">
		<div id='naviDiv'>
			<span> <img src="../images/arror.gif" width="7" height="11" border="0" alt="">
			</span> &nbsp;房间管理 <span>&nbsp; <span> <img src="../images/arror.gif" width="7"
					height="11" border="0" alt="">
			</span> &nbsp;房间总览<span>&nbsp; 
		</div>
	</div>

	<div id="tips">
	</div>
	<div id="mainContainer">
		<table class="default" width="50%" height="50px">
			<!--已租房间总数  -->
			<col width="10%">
			<!-- 故障房间总数 -->
			<col width="10%">
			<!-- 可用房间总数 -->
			<col width="10%">
			<tr class="title">
				<td>已租房间总数</td>
				<td>故障房间总数</td>
				<td>可用房间总数</td>
			</tr>
			<tr class="list">
				<td><s:property value="#session.rented" /></td>
				<td><s:property value="#session.trouble" /></td>
				<td><s:property value="#session.available" /></td>
			</tr>
			
		</table>
	</div>
</body>
</html>