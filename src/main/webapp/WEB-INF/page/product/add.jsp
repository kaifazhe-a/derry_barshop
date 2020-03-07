<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 87707
  Date: 2019/12/17
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品添加</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>\res\js\jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>\res\layer\layer.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>\res/layer/layui-v2.5.4/layui/css/layui.css" media="all">
</head>
<style>
.error{
    color:red;
}
</style>
<body>
<form id="fm">
    <input type="hidden" name="proStatus" value="1">
    <table class="layui-table" lay-skin="line">
        <tr>
            <th colspan="6"><span style="color: #0b0d0c">商品添加(进货)</span></th>
        </tr>
        <tr>
            <th>商品名</th>
            <td><input type="text" name="proName"/></td>
        </tr>
        <tr>
            <th>商品图片</th>
            <td><input type="file" name="file" id="file"/></td>
        </tr>
        <tr>
            <th>价格</th>
            <td><input type="text" name="proPrice"/></td>
        </tr>
        <tr>
            <th>商品功效</th>
            <td><input type="text" name="proEffect"/></td>
        </tr>
        <tr>
            <th>库存</th>
            <td><input type="text" name="proCount"/></td>
        </tr>
    </table>
    <input type="button" onclick="addProduct()" value = "入库" class="layui-btn layui-btn-sm layui-btn-radius layui-btn-primary"/>
</form>
</body>
<script>


    // 商品添加
    function addProduct() {
        $.post(
            "<%=request.getContextPath()%>/product/add",
            $("#fm").serialize(),
            function(data) {
                if(data.code != 200) {
                    layer.alert(data.msg, {
                        icon: 5,
                        area: ['280px', '190px'],
                        skin: 'layui-layer-lan',
                        class: 'layui-bg-black',
                        title: '商品入库',
                        shade: 0.5, //遮罩透明度
                        anim: 1, //0-6的动画形式，-1不开启
                    });
                    return;
                }
                layer.alert("商品入库成功", {
                    icon: 1,
                    area: ['280px', '190px'],
                    skin: 'layui-layer-lan',
                    title: '商品入库',
                    shade: 0.5, //遮罩透明度
                    anim: 1, //0-6的动画形式，-1不开启
                }, function () {
                    parent.location.href = "<%=request.getContextPath()%>/product/toShow";
                });
            });
    }

</script>
</html>
