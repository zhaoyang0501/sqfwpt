<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul>
								<li ><a id="_index" href="index">首页</a></li>
								<li ><a id='_news' href="news">工作动态</a></li>
								<li ><a  id='_notice' href="notice">通知公告</a></li>
								<li ><a id='_birth' href="birth">计生工作</a></li>
								<li ><a id='_communist' href="communist">社区党建</a></li>
								<li ><a id='_project' href="project">社区活动</a></li>
								<li ><a id='_health' href="health">社区医疗</a></li>
								<li ><a id='_service' href="service">社区服务</a></li>
								<li ><a id='_about' href="about">关于我们</a></li>
								<c:if test="${sessionScope.user!=null }">
									<li ><a id='_center' href="center">个人中心</a></li>
								</c:if>
</ul>