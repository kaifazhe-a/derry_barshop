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

    /**
     * 添加商品
     */
    function addProduct() {
        debugger
        var index = layer.load(1, {
            shade: [0.1, '#fff'] //0.1透明度的白色背景
        });

        var formData = new FormData($("#fm")[0]);
        //七牛雲上传图片只能ajax提交
        $.ajax({
            type: 'post',
            url: "<%=request.getContextPath()%>/product/add",
            data: formData,
            /* data:$("#file").val(), */
            cache: false, //上传文件不需要缓存
            processData: false,//告诉jQuery不要去处理发送的数据
            contentType: false,//告诉jQuery不要去设置Content-Type请求
            success: function (result) {
                layer.msg(result.msg, {
                    icon: 6,
                    time: 1000
                }, function () {
                    layer.close(index)
                    if (result.code == 200) {
                        parent.location.href = "<%=request.getContextPath()%>/product/toShow";
                    }
                });
            }
        });

    }

</script>
</html>
