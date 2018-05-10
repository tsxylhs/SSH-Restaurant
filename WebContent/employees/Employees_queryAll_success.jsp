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
			</span> &nbsp;人员管理 <span>&nbsp; <span> <img src="../images/arror.gif" width="7"
					height="11" border="0" alt="">
			</span> &nbsp;员工列表<span>&nbsp; 
		</div>
	</div>

	<div id="tips">
		<s:if test="#session.status=='2'.toString()">
			<div id="buttonGroup">
				<div class="button" onclick="window.location='Employees_add.jsp'"
					onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'"
					onmouseover="this.style.backgroundColor='#77D1F6';this.style.fontWeight='bold'">
					<a>添加员工</a>
				</div>
				<form id="seachForm" method="post" style="display: none;"></form>
			</div>
		</s:if>
	</div>

	<s:if test="#session.status=='2'.toString()">
		<div id="mainContainer">
			<table class="default" width="80%" height="50px">
				<!-- 工号 -->
				<col width="3%">
				<!-- 姓名 -->
				<col width="8%">
				<!-- 性别 -->
				<col width="5%">
				<!-- 年龄-->
				<col width="5%">
				<!-- 工龄-->
				<col width="5%">
				<!-- 工资-->
				<col width="5%">
				<!-- 年终奖-->
				<col width="5%">
				<!-- 修改-->
				<col width="5%">
				<!-- 删除-->
				<col width="5%">
				<tr class="title">
					<td>工号</td>
					<td>姓名</td>
					<td>性别</td>
					<td>年龄</td>
					<td>工龄</td>
					<td>工资</td>
					<td>年终奖</td>
					<td>操作</td>
					<td>操作</td>
				</tr>
				<s:iterator value="#session.employees_list" var="employee">
					<tr class="list">
						<td><s:property value="#employee.employeeId" /></td>
						<td><s:property value="#employee.name" /></td>
						<td><s:property value="#employee.gender" /></td>
						<td><s:property value="#employee.age" /></td>
						<td><s:property value="#employee.employeeYear" /></td>
						<td><s:property value="#employee.salary" /></td>
						<td><s:property value="#employee.FSalary" /></td>
						<td>
						<a href="<%=path%>/employee/Employee_query.action?employeeId=<s:property value="#employee.employeeId"/>">修改</a></td>
						<td><a href="<%=path%>/employee/Employee_delete.action?employeeId=<s:property value="#employee.employeeId"/>"
								onclick="javascript: return confirm('真的要删除吗？');">删除</a></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</s:if>
	<s:else>
		<p align="center">您没有权限查看</p>
	</s:else>
</body>
</html>