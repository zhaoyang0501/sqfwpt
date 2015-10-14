<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script language="javaScript" type="text/javascript" src="js/jquery.js" ></script>
<script language="javaScript" type="text/javascript" src="js/jquery.validate.js" ></script>
<style type="text/css">
			.error label {
				display: block  !important;
				margin-left: 1em;
				width: auto;
				float: none  !important;
				color: red;
				}
		</style>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link type="text/css" rel="stylesheet" href="css/pagination_new.css" />
		<title></title>
		<link type="text/css" rel="stylesheet" href="pagination_new.css"  />
		<script type="text/javascript">
			$(document).ready(function(){
				$("#_index").addClass("current");
				
				var formvalidate= $("#registerForm").validate({
					errorLabelContainer: $("#registerForm div.error"),
					ignore:"",
					rules: {
						"family.name":  "required",
						"family.birthDate": {required:true,date:true},
						"family.cardid":  "required",
						"family.sex":  "required",
						"family.relation":  "required",
						"family.addr":  "required",
						"family.place":  "required",
						},
					messages: {
						"family.name":   "请填写姓名",
						"family.birthDate": {required:"请填写出生日期",date:"日期格式不正确"},
						"family.cardid":  "请填写身份证号码",
						"family.sex":  "请选择性别",
						"family.relation":  "请选择与户主关系",
						"family.addr":   "请填写出生地址",
						"family.place":   "请填写籍贯",
						
					}
				});
			});
		</script>
</head>
<body>
	<div id="top">
		<div class="banner">
	        <div class="logo">
	        </div>
		</div>
	</div>

	<div id="container">
		<div class="mid">
			<!-- 菜单 -->
			<div class="nav">
				<div class="left"></div>
				<div class="mid">
					<%@include file="./menu.jsp" %>
				</div>
				<div class="right"></div>
			</div>
			<!-- 面包屑 -->
			<div class="address">
				目前位置：<a href="" >首页</a><span>></span><span>新增家庭成员</span>
			</div>
			<!-- 正文 -->
			
			<div class="readbox">
					<div class="title">
						<ul>
							<li class="current">
								<span><a href="javascript:void(0);">新增家庭成员</a></span>
							</li>
						</ul>
					</div>
					<div class="view register">
						<form action="dofamily" id="registerForm" name="registerForm" method="post">
							<div class="error">
							</div>
							<div class="class">
								<b>新增家庭成员</b>
							</div>
							<div class="form">
								<ul>
									<li>
										<div class="name">
											<b>姓名：</b>
										</div>
										<input class="size1" type="text" id="name" name="family.name"/>
									</li>
									
									<li>
										<div class="name">
											<b>出生日期：</b>
										</div>
										<input class="size1" type="text" id="birthDate" name="family.birthDate"/>
										日期格式：yyyy-MM-dd
									</li>
									
									<li>
										<div class="name">
											<b>身份证号码：</b>
										</div>
										<input class="size1" type="text" id="worker.cardid" name="family.cardid"/>
										
									</li>
									
									
									<li>
										<div class="name">
											<b>性别：</b>
										</div>
										<input type="radio" name="family.sex" checked="checked" value="男"/>
										&nbsp;男&nbsp;&nbsp;
										<input type="radio" name="family.sex" value="女"/>
										&nbsp;女
									</li>
									
									<li>
										<div class="name">
											<b>与户主关系：</b>
										</div>
										<select class="size4" id="relation" name="family.relation"
									style="font-family: SimSun; font-size: 12px;"><option
											value="">----------------请选择----------------</option>
										<option value="子女">子女</option>
										<option value="父母">父母</option>
										<option value="祖父母">祖父母</option>
										<option value="其它">其它</option>
										</select>
									</li>
									
									
									<li>
										<div class="name">
											<b>出生地：</b>
										</div>
										<input class="size1" type="text" id="addr" name="family.addr"/>
										
									</li>
									<li>
										<div class="name">
											<b>籍贯：</b>
										</div>
										<input class="size1" type="text" id="addr" name="family.place"/>
									</li>
									
								</ul>
							</div>
							<input type="submit" class="" value="提交" style="margin: auto auto" />
						</form>
					</div>
				</div>
			<!-- 正文 -->
			
		</div>
		<div class="bot"></div>
	</div>
	<%@include file="./foot.jsp" %>
	</body>
</html>
