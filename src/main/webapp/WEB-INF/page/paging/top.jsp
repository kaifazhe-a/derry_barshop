<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery-1.12.4.min.js"></script>
<title>Insert title here</title>
  <link rel="stylesheet" href="<%=request.getContextPath() %>/res/layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <%--<div class="layui-logo">管⭐</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="<%=request.getContextPath() %>/user/toLogin" target="right">返回登录</a></li>
    </ul>--%>

    <ul class="layui-nav layui-layout-right">

      <li class="layui-nav-item">
        <a href="javascript:;">
          ${user.userName}
        </a>
      </li>
      <li class="layui-nav-item"><a href="<%=request.getContextPath() %>/user/toLogin" target="right">👉返回登录</a></li>
    </ul>
  </div>
</div>
<%-- 		<center><h1><span style="color:Gold">点金人⭐用户信息✨</span></h1></center>
		<marquee></marquee><center><h2>欢迎${djUser.userName}用户登录</h2></center> 
		<a href="<%=request.getContextPath() %>/user/toLogin">👉点击退出</a>
	<div id="datetime" align="right" style="color:red">⭐⭐⭐
		<script>
	 		setInterval("document.getElementById('datetime').innerHTML=new Date().toLocaleString();", 1000);
	   </script>
	</div> --%>
 </body>
</html>