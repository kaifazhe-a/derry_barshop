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
    <div class="layui-logo">德瑞家的理发店⭐</div>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
         登录人：${staff.staffName}
        </a>
      </li>
      <li class="layui-nav-item"><a href="<%=request.getContextPath() %>/staff/toLogin" target="right">👉退出</a></li>
    </ul>
  </div>
</div>
 </body>
</html>