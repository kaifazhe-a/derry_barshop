<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/res/layui/css/layui.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/layui/layui.all.js"></script>
<title>理发项目展示</title>
</head>
<body bgcolor="LightCyan">
<%--<span style="float: right" id="pShow" >
    <a href=""><span style="color: #1E9FFF">首页</span></a>
    <a href="javascript:void(0)" onclick="toLogin()"  id="login"><span style="color: #1E9FFF">登录</span></a>
    <a href="javascript:void(0)" onclick="toAdd()"><span style="color: #1E9FFF">注册</span></a>
    <a href="javascript:void(0)" onclick="toShopCar()"><span style="color: #1E9FFF">我的购物车</span></a>
</span>--%>
<form id="frm">
    名称：<input type="text" name="productName" /><br>
    价格：<input type="text" name="max" /> ~~ <input type="text" name="min" /><br>
    <input type="hidden" value="1" name="pageNo" id="page"/>
    <input type="button" value="搜索" onclick="findProduct()"/><br>
</form>
<center>
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
    <tr>
        <td>理发项目</td>
        <td>理发价格</td>
        <td>理发时间</td>
        <td>参考图片</td>
        <td>操作</td>
    </tr>
    <tbody id="tbd">
    </tbody>
</table>
    <div id="pageNo"></div>
</center>
</body>
<script type="text/javascript">

   /* $(function () {
        var nickName = cookie.get("nickName");
        var userName = cookie.get("userName");
        var token = cookie.get("token");
        if (nickName != undefined && nickName != "") {
            $("#login").html(userName+"("+nickName+")");
            $("#login").attr("href", "<%=request.getContextPath() %>/to/index?token="+token);
        }
        show();
    })*/

    //页面加载事件
    $(function() {
        show();
    })
    // 搜索
    function findProduct(){
        show();
    }

    //展示的方法
    function show() {
        $.post(
        "<%=request.getContextPath()%>/itme/show",
        $("#frm").serialize(),
        function(data) {
            var html="";
            var pageHtml="";
            for (var i = 0; i < data.data.list.length; i++) {
                    var itme = data.data.list[i];
                    html += "<tr>";
                    html+="<input type='hidden' id='"+itme.id+"'/>"
                    html += "<td>"+itme.itmeName+"</td>";
                    html += "<td>￥"+itme.itmePrice+"</td>";
                    html += "<td>"+itme.itmeTime+"分钟</td>";
                    html += "<td>"+111+"</td>";
                    html += "<td><input type='button' value='选择理发师' onclick='xiaofei("+itme.roleId+")'class='layui-btn layui-btn-warm layui-btn-radius\'/></td>";
                    html += "</tr>";
                }
                $("#tbd").html(html);
                var pageNo = $("#page").val()
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

    function toAdd(){
        layer.open({
            type: 2 //Page层类型
            ,area: ['500px', '400px']
            ,title: '你好。'
            ,shade: 0.6 //遮罩透明度
            ,maxmin: true //允许全屏最小化
            ,anim: 1 //0-6的动画形式，-1不开启
            ,content: "<%=request.getContextPath()%>/user/toAdd"
        });
    }
    // 去商品详细
    function toShopDetail(proId){
        window.location.href="<%=request.getContextPath()%>/product/toShopDetail?id="+proId
    }
    //去登录页面
    function toLogin(){
        layer.open({
            type: 2,
            title: '用户登录面页',
            shadeClose: false,
            shade: 0.6,
            area: ['380px', '90%'],
            content: "<%=request.getContextPath()%>/user/toLogin"
        });
    }

</script>
</html>