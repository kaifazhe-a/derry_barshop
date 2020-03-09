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
<body bgcolor="LightCyan">
<center>
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <tr>
            <td>会员卡ID</td>
            <td>会员卡号</td>
            <td>会员姓名</td>
            <td>会员卡余额</td>
            <td>会员等级</td>
            <td>累计充值</td>
            <td>状态</td>
            <td>操作</td>
        </tr>
        <tbody id="tbd">
        </tbody>
    </table>
</center>
</body>
<script type="text/javascript">

    //页面加载事件
    $(function() {
        show();
    })

    //展示的方法
    function show() {
        $.post(
            "<%=request.getContextPath()%>/vipcard/showVip",
            $("#frm").serialize(),
            function(data) {
                var html="";
                var data = data.data;
                for (var i = 0; i < data.length; i++) {
                    var vip = data[i];
                    html += "<tr>";
                    html += "<td>"+vip.id+"</td>";
                    html += "<td>"+vip.vipCardNumber+"</td>";
                    html += "<td>"+vip.vipName+"</td>";
                    html += "<td>"+vip.vipBalance+"</td>";
                    html += "<td>"+vip.vipGrade+"</td>";
                    html += "<td>"+vip.priceSum+"</td>";
                    html += "<td>"+vip.vipStatus+"</td>";
                    html += "<td><input type='button' value='充值' onclick='addMoney("+vip.id+")'class='layui-btn layui-btn-warm layui-btn-radius\'/></td>";
                    html += "</tr>";
                }
                $("#tbd").html(html);
            })
    }


    function addMoney(id) {
        layer.open({
            type: 2,
            title: '充值',
            shadeClose: true,
            shade: 0.8,
            anim: 1,
            area: ['380px', '90%'],
            content: "<%=request.getContextPath() %>/vipcard/toTopUp?id="+id
        });
    }
</script>
</html>