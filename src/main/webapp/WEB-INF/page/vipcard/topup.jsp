<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/res/layui/css/layui.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/layui/layui.all.js"></script>
<title>vip信息</title>
</head>
<body>
<form id="fo">
    <input type="hidden" name="id" value="${vip.id}">
    <br>
    <table class="layui-table"  >
        <colgroup>
            <col width="300">
            <col width="300">
            <col>
        </colgroup>
        <thead >
        <tr style="color:#DB7093">
            <th>会员姓名</th>
            <th>${vip.vipName}</th>
        </tr>
        <tr style="color:#DB7093">
            <th>会员卡号</th>
            <th>${vip.vipCardNumber}</th>
        </tr>
        <tr style="color:#DB7093">
            <th>余额</th>
            <th>${vip.vipBalance}</th>
        </tr>
        <tr style="color:#DB7093">
            <th>充值金额</th>
            <th><input type="text" name="upMoney"></th>
        </tr>
        </th>
        </tr>
        </thead>
        <tbody id="tbd"></tbody>
    </table><br>
    <div align="center"><input type="button" value="确认充值" onclick="addMoney()" class="layui-btn layui-btn-radius layui-btn-primary"></div>
</form>
</body>
<script type="text/javascript">
    function addMoney() {
        var index = layer.load();
        $.post("<%=request.getContextPath() %>/vipcard/addMoney",
            $("#fo").serialize(),
            function(data){
                layer.close(index);
                layer.msg(data.msg, function(){
                    parent.location.href="<%=request.getContextPath() %>/vipcard/toShowVipcard";
                });
            })
    }

</script>
</html>