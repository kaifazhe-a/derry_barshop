<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/res/layui/css/layui.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/layui/layui.all.js"></script>
<title>购买商品</title>
</head>
<body bgcolor="LightCyan">
<form id="frm">

</form>
<center>
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <tr>
            <td>参考图片</td>
            <td>商品名</td>
            <td>价格</td>
            <td>功效</td>
            <td>操作</td>
        </tr>
        <tr>
            <td><img src='${productPojo.proImg}'> </td>
            <td> ${productPojo.id}</td>
            <td> ${productPojo.proName}</td>
            <td> ${productPojo.proPrice}</td>
            <td> ${productPojo.proEffect}</td>
            <td> ${productPojo.proCount}</td>
        </tr>
    </table>
    <div id="pageNo"></div>
</center>
</body>
<script type="text/javascript">

</script>
</html>