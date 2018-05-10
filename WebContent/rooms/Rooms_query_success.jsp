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
	<div id="navi">
		<div id='naviDiv'>
			<span> <img src="../images/arror.gif" width="7" height="11" border="0" alt="">
			</span> &nbsp;房间管理 <span>&nbsp; <span> <img src="../images/arror.gif" width="7"
					height="11" border="0" alt="">
			</span> &nbsp;房间列表<span>&nbsp; 
		</div>
	</div>
	<div id="tips">
		<s:if test="#session.status=='2'.toString()">
			<div id="buttonGroup">
				<div class="button" onclick="window.location='Rooms_add.jsp'"
					onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'"
					onmouseover="this.style.backgroundColor='#77D1F6';this.style.fontWeight='bold'">
					<a>添加房间</a>
				</div>
				<form id="seachForm" method="post" style="display: none;"></form>
			</div>
		</s:if>
	</div>
	<div id="mainContainer">
		<table class="default" width="100%" height="50px">
			<!-- 房号 -->
			<col width="8%">
			<!-- 价格 -->
			<col width="8%">
			<!-- 青铜会员 -->
			<col width="8%">
			<!-- 白银会员-->
			<col width="8%">
			<!-- 黄金会员-->
			<col width="8%">
			<!-- 当前状态-->
			<col width="5%">
			<!-- 操作 -->
			<col width="5%">
			<tr class="title">
				<td>房号</td>
				<td>价格</td>
				<td>青铜会员价</td>
				<td>白银会员价</td>
				<td>黄金会员价</td>
				<td>当前状态</td>
				<td>操作</td>
			</tr>
			<s:iterator value="#session.rooms_list" var="room">
				<tr class="list">
					<td><s:property value="#room.roomNumber" /></td>
					<td>¥ <s:property value="#room.price" /></td>
					<td>¥ <s:property value="#room.price*0.9" /></td>
					<td>¥ <s:property value="#room.price*0.8" /></td>
					<td>¥ <s:property value="#room.price*0.7" /></td>
					<td><s:property value="#room.status" /></td>
					<!-- 如果是会员，显示预订 -->
					<s:if test="#session.status=='1'.toString()">
						<s:if test='%{#room.status=="可预订"}'>
							<td><a href="<%=path%>/members/Member_applyPay.action?RId=<s:property value="#room.RId"/>">我要预订</a></td>
						</s:if>
						<s:elseif test='%{#room.status=="使用中"}'>
							<td>无法预订</td>
						</s:elseif>
						<s:elseif test='%{#room.status=="故障"}'>
							<td>无法预订</td>
						</s:elseif>
					</s:if>
					<!-- 如果是管理员，显示修改 -->
					<s:if test="#session.status=='2'.toString()">
							<td><a href="<%=path%>/rooms/Room_applyModify.action?RId=<s:property value="#room.RId"/>">
								修改房间信息
							</a></td>
					</s:if>
				</tr>
			</s:iterator>
		</table>
	</div>
</body>
</html>