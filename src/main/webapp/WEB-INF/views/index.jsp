<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script language="javaScript" type="text/javascript" src="js/jquery.js" ></script>
<script language="javaScript" type="text/javascript" src="js/picShow.js" ></script>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link type="text/css" rel="stylesheet" href="css/pagination_new.css" />
		<title></title>
		<link type="text/css" rel="stylesheet" href="pagination_new.css"  />
		<script type="text/javascript">
			$(document).ready(function(){
				$("#_index").addClass("current");
				if("${tip}" != null && "${tip}" != ""){
					alert("${tip}");
				}
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
			<!-- 正文 -->
			<div class="content">
					<div class="area_left">
				    	<div id="ifocus">
							<div id="ifocus_pic">
								<div id="ifocus_piclist" style="left:0; top:0;">
									<ul>
									<li><a href="#" target='_blank'><img
											src='images/t1.jpg' width='508' height='287'
											onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'" /></a></li>
									<li><a
										href="#"
										target='_blank'><img
											src='images/4.jpg'
											width='508' height='287'
											onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'" /></a></li>
									<li><a
										href="#"
										target='_blank'><img
											src='images/1.jpg'
											width='508' height='287'
											onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'" /></a></li>
								</ul>
								</div>
								<div id="ifocus_opdiv"></div>
								<div id="ifocus_tx">
									<ul>
										<li class='current'>我向国旗敬礼</li><li class='normal'>为抗战老兵颁发纪念章</li><li class='normal'>说好普通话 方便你我他</li>
									</ul>
								</div>
							</div>
							<div id="ifocus_btn">
								<ul>
								<li class='current'><img
									src='images/t1.jpg'
									width='157' height='93'
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'" /><span></span></li>
								<li class='normal'><img
									src='images/4.jpg'
									width='157' height='93'
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'" /><span></span></li>
								<li class='normal'><img
									src='images/1.jpg'
									width='157' height='93'
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'" /><span></span></li>
							</ul>
							</div>
						</div>
				    	
						
						<!-- 工作动态 -->
						<div class="working">
							<div class="title">
								<div class="bt"></div>
							</div>
							<div class="list">
								<ul>
								<c:forEach items="${newss}" var="bean" end="7">
								<li><a
									href="detail?id=${bean.id}"
									target="_blank">${bean.title}</a><span>${bean.createDate}</span></li>
								</c:forEach>
								
							</ul>
							</div>
						</div>
						
						<div class="volunteer">
							<div class="title">
								<div class="bt"></div>
								<a class="more" href="#">[更多]</a>
							</div>
							<ul>
							<li><a
								href="/wxzyz/Docs/news/1/html/1278463/20150730143848650.shtml"
								target="_blank"><img
									src="images/2.jpg"
									title="诸海燕：热心社区..." alt="诸海燕：热心社区..." width="150" height="113"
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'"></a><a
								href="/wxzyz/Docs/news/1/html/1278463/20150730143848650.shtml"
								target="_blank" class="subject">诸海燕：热心社区...</a></li>
							<li><a
								href="/wxzyz/Docs/news/1/html/1278463/20150713165342386.shtml"
								target="_blank"><img
									src="images/3.jpg"
									title="82岁的老爷爷感动市民" alt="82岁的老爷爷感动市民" width="150" height="113"
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'"></a><a
								href="/wxzyz/Docs/news/1/html/1278463/20150713165342386.shtml"
								target="_blank" class="subject">82岁的老爷爷感动市民</a></li>
							<li><a
								href="/wxzyz/Docs/news/1/html/1278463/20130527103424253.shtml"
								target="_blank"><img
									src="images/5.jpg"
									title="无锡市惠山区长乐..." alt="无锡市惠山区长乐..." width="150" height="113"
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'"></a><a
								href="/wxzyz/Docs/news/1/html/1278463/20130527103424253.shtml"
								target="_blank" class="subject">市惠山区长乐...</a></li>
							<li><a
								href="/wxzyz/Docs/news/1/html/1278463/20130520104736425.shtml"
								target="_blank"><img
									src="images/6.jpg"
									title="锡山区志愿者雨天..." alt="锡山区志愿者雨天..." width="150" height="113"
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'"></a><a
								href="/wxzyz/Docs/news/1/html/1278463/20130520104736425.shtml"
								target="_blank" class="subject">区志愿者雨天...</a></li>
						</ul>
						</div>
						
						
					</div>
					<div class="area_right">
						
<div class="box">
	<div id="enter" class="title">
		<span class="current" id="zyzLogin">登录</span>
		
	</div>
	<div class="inner">
		<div class="login" id="zyzLoginDiv">
		
		<c:if test="${sessionScope.user==null}">
			 <form action="dologin" method="post">
			<ul>
				<li style="margin-top:10px; _margin-top:13px; line-height: 35px;_line-height: 33px;">
					<span>登录账号：</span>
					<input type="text" autocomplete="off" name="worker.username">
				</li>
				<li style="margin-top:5px; line-height: 35px;_line-height: 33px;">
					<span>登录密码：</span>
					<input type="password" autocomplete="off" style="font-family: Tahoma;" name="worker.password">
				</li>
				
				<li style="margin-top:5px; line-height: 35px;_line-height: 33px;">
					<input class="submit" type="submit" value="" >
					<br>
				</li>
				<li style="margin-top:10px;margin-left: 15px; line-height: 35px;_line-height: 35px;">
					<a href="register"><img src="images/reg.gif"></a>
				</li>
			</ul>
			</form> 
			</c:if>
			<c:if test="${sessionScope.user!=null }">
			<ul>
				<li style="margin-top:10px; _margin-top:13px; line-height: 35px;_line-height: 33px;">
					<span>欢迎您：来自${sessionScope.user.id}的${sessionScope.user.name}</span>
				</li>
				
				<li style="margin-top:10px;margin-left: 15px; line-height: 35px;_line-height: 35px;">
					<a href="loginout"><img src="images/bbb.gif"></a>
				</li>
			</ul>
			</c:if>
		</div>
	</div>
</div>
<div class="box">
							<div class="title">
								<span class="current">关于社区</span>
								<a class="more" href="register">[更多]</a>
							</div>
							<div class="inner">
								<div style="line-height:22px; font-size:14px; padding:5px;">
							XXX社区是明、清时为皇帝打造兵刃和铁器的地方，因其在京城南郊另一个铁匠营的东边，故名为东铁匠营。在明代，这里是杂草众生、没人开垦的荒郊野外，只有众多的坟茔，因无人问津，渐渐就成为了自家的坟地了，当时有名的有贾家坟、于家坟、王家坟、谭家坟和三亲家坟等，当时只有几户看坟户和外地逃荒来的农民
								</div>	
							</div>
						</div>


<div class="box">
							<div class="title" >
								<span class="current">社区通知公告</span>
								<a class="more" href="notice">[更多]</a>
							</div>
							<div class="inner">
								<div class="list" style="height:250px;">
								<c:forEach items="${notice}" var="bean" end="3">
								<li><a
									href="detail?id=${bean.id}"
									target="_blank">${bean.title}</a><span>
									<fmt:formatDate value="${bean.createDate}" type="date" dateStyle="medium"/>
									</span></li>
								</c:forEach>
							
							</div>
							</div>
</div>



					</div>
				<div class="friendly">
					<div class="inner">
						<a href="http://wx.wenming.cn/" target="_blank">中国文明网</a>
						<a href="http://wm.jschina.com.cn/" target="_blank">江苏文明网</a>
						<a href="http://wmw.wuxi.gov.cn/" target="_blank">文明网</a>
						<a href="http://www.zgzyz.org.cn/volunteer/index.html" target="_blank">文明网</a>
						<a href="http://www.jsvolunteer.org/jsvolunteer/app/index.jsp" target="_blank">江苏志愿者网</a>
						<a href="http://www.jsvolunteer.org/jsvolunteer/app/index.jsp" target="_blank">太湖青年网</a>
						<a href="http://www.thmz.com/" target="_blank">太湖明珠网</a>
						<a href="http://www.wxrb.com" target="_blank">新传媒</a>
						<a href="http://www.jnwb.net/" target="_blank">无锡新传媒</a>
						<a href="http://help.wst.cn/" target="_blank">二泉公益</a>
					</div>
				</div>
			</div>
			
		</div>
		<div class="bot"></div>
	</div>
	<%@include file="./foot.jsp" %>
	</body>
</html>
