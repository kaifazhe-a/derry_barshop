<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/res/layui/css/layui.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/layui/layui.all.js"></script>
<title>商品展示</title>
</head>
<body bgcolor="LightCyan">
<form id="frm">
    名称：<input type="text" name="productName" /><br>
    价格：<input type="text" name="max" /> ~~ <input type="text" name="min" /><br>
    <input type="hidden" value="1" name="pageNo" id="page"/>
    <input type="button" value="搜索" onclick="findProduct()" class="layui-btn layui-btn-sm layui-btn-radius layui-btn-primary"/><br>
</form>
<center>
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>s
    <tr>
        <td><input type="button" onclick="addPro()" value="进货" class="layui-btn layui-btn-sm layui-btn-radius layui-btn-primary"/></td>
    </tr>
    <tr>
        <td>商品名</td>
        <td>参考图片</td>
        <td>价格</td>
        <td>功效</td>
        <td>操作</td>
    </tr>
    <tbody id="tbd">
    </tbody>
</table>
    <div id="pageNo"></div>
</center>
</body>
<script type="text/javascript">
    //页面加载事件
    $(function() {
        show();
    })
    // 搜索
    function findProduct(){
        show();
    }
    // 商品展示
    function show() {
        $.post(
        "<%=request.getContextPath()%>/product/show",
        $("#frm").serialize(),
        function(data) {
            var html="";
            var pageHtml="";
            for (var i = 0; i < data.data.list.length; i++) {
                    var pro = data.data.list[i];
                    html += "<tr>";
                    html+="<input type='hidden' id='"+pro.id+"'/>"
                    html += "<td>"+pro.proName+"</td>";
                    html += "<td><img src='"+pro.proImg+"'></td>";
                    html += "<td>￥"+pro.proPrice+"</td>";
                    html += "<td>"+pro.proEffect+"</td>";
                    html += "<td><input type='button' value='购买' onclick='buy("+pro.id+")'class='layui-btn layui-btn-warm layui-btn-radius\'/></td>";
                    html += "</tr>";
                }
                $("#tbd").html(html);
                var pageNo = $("#page").val();
                var pages = data.data.pages;
                pageHtml+="<input type='button' onclick='page("+(parseInt(pageNo)-1)+","+pages+")' value='上一页' /> <input type='button' onclick='page("+(parseInt(pageNo)+1)+","+pages+")' value='下一页' />"
                $("#pageNo").html(pageHtml)
        })
    }
    function page(pageNo,pages){
        if(pageNo > pages) {
            layer.alert("最后一页了!!!");
            return;
        }
        if(pageNo < 1) {
            layer.msg("已经是当前第一页");
            return;
        }
        $("#page").val(pageNo)
        show();
    }

    /**
     * 购买商品
     */
    function buy(){
        layer.open({
            type: 2 //Page层类型
            ,area: ['500px', '400px']
            ,title: '购买商品'
            ,shade: 0.6 //遮罩透明度
            ,maxmin: true //允许全屏最小化
            ,anim: 1 //0-6的动画形式，-1不开启
            ,content: "<%=request.getContextPath()%>/turnover/toAdd"
        });
    }

    /**
     * 商品添加(进货)
     */
    function addPro(){
        layer.open({
            type: 2 //Page层类型
            ,area: ['500px', '400px']
            ,title: '商品添加(进货)'
            ,shade: 0.6 //遮罩透明度
            ,maxmin: true //允许全屏最小化
            ,anim: 1 //0-6的动画形式，-1不开启
            ,content: "<%=request.getContextPath()%>/product/toAdd"
        });
    }



</script>
</html>