<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 87707
  Date: 2020/3/10
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购买商品</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>\res\js\jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>\res\layer\layer.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>\res/layer/layui-v2.5.4/layui/css/layui.css" media="all">
</head>
<body>
<br/><br/>
<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    商品信息
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</h3>
<br/><br/>
<div style="float: left">
    <img src='${pro.proImg}' alt="" width="170px" height="200px">
</div>
&nbsp;&nbsp;
<form id="fm">
    <input type="hidden" name="id" value="${pro.id}"/>
    <div id="di" >
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span style="color: #af0000">商品名称：</span>
        ${pro.proName}<input type="hidden" value="${pro.proName}" name="proName"/><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="color: #af0000">价格：</span>
        ￥${pro.proPrice}<input type="hidden" value="${pro.proPrice}" name="proPrice"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span style="color: #af0000">商品功效：</span><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        ${pro.proEffect}<br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span style="color: #af0000">购买数量:</span>
        <label>
            &nbsp;<input type="number" id="proCount" name="proCount" onblur="toupdate(this.value)">
        </label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br/><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" onclick="toBuy()" value="购买并支付" class="layui-btn layui-btn-sm layui-btn-radius layui-btn-primary"/>
    </div>
</form>
</body>
<script>
    /**
     * 购买
     */
    function toBuy() {
        var index = layer.load(1, {
            shade: [0.1, '#fff'] //0.1透明度的白色背景
        });
        $.post(
            "<%=request.getContextPath()%>/product/buyProduct",
            $("#fm").serialize(),
            function (data) {
                layer.close(index);
                if (data.code != 200) {
                    layer.alert("购买失败");
                    return;
                }
                layer.alert("购买成功", {
                    icon: 1,
                    area: ['280px', '190px'],
                    skin: 'layui-layer-lan',
                    title: '商品购买',
                    shade: 0.5, //遮罩透明度
                    anim: 1, //0-6的动画形式，-1不开启
                });
            });
    }
</script>
</html>
