<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/res/layui/css/layui.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/layui/layui.all.js"></script>
<title>店内人员信息展示</title>
</head>
<body bgcolor="LightCyan">
<%--<span style="float: right" id="pShow" >
    <a href=""><span style="color: #1E9FFF">首页</span></a>
    <a href="javascript:void(0)" onclick="toLogin()"  id="login"><span style="color: #1E9FFF">登录</span></a>
    <a href="javascript:void(0)" onclick="toAdd()"><span style="color: #1E9FFF">注册</span></a>
    <a href="javascript:void(0)" onclick="toShopCar()"><span style="color: #1E9FFF">我的购物车</span></a>
</span>--%>
<form id="frm">
   <%-- 名称：<input type="text" name="productName" /><br>
    <input type="hidden" value="1" name="pageNo" id="page"/>
    <input type="button" value="搜索" onclick="findProduct()"/><br>--%>
</form>
<center>
    <input type="button" value="招聘员工" onclick="addStaff()" class="layui-btn layui-btn-sm layui-btn-radius layui-btn-primary"/><br>
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
    <tr>
        <td>姓名</td>
        <td>手机号/邮箱</td>
        <td>人员面貌</td>
        <td>员工级别</td>
        <td>入职时间</td>
        <td>状态</td>
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

    //展示的方法
    function show() {
        $.post(
        "<%=request.getContextPath()%>/staff/show",
        $("#frm").serialize(),
        function(data) {
            var html="";
            var pageHtml="";
            for (var i = 0; i < data.data.list.length; i++) {
                    var staff = data.data.list[i];
                    html += "<tr>";
                    html+="<input type='hidden' id='"+staff.id+"'/>"
                    html += "<td>"+staff.staffName+"</td>";
                    html += "<td>"+staff.staffPhoneEmail+"</td>";
                    html += "<td><img src='"+staff.staffImg+"'></td>";
                    html += "<td>"+staff.roleName+"</td>";
                    html += "<td>"+staff.creationTime+"</td>";
                    html += "<td>"+staff.baseStaffStatus+"</td>";
                    html += "<td><input type='button' value='开除' onclick='del("+staff.id+")'class='layui-btn layui-btn-radius layui-btn-danger\'/></td>";
                    html += "</tr>";
                }
                $("#tbd").html(html);
                var pageNo = $("#page").val()
                var pages = data.data.pages;
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

    function del(id){
        var index = layer.load();
        $.post(
            "<%=request.getContextPath()%>/staff/del",
            {"id":id},
            function (data) {
                layer.close(index);
                if(data.code == 200){
                    show();
                } else {
                    alert(data.msg);
                }
            }
        );}

    function addStaff(){
        layer.open({
            type: 2 //Page层类型
            ,area: ['500px', '400px']
            ,title: '你好。'
            ,shade: 0.6 //遮罩透明度
            ,maxmin: true //允许全屏最小化
            ,anim: 1 //0-6的动画形式，-1不开启
            ,content: "<%=request.getContextPath()%>/staff/toAddStaff"
        });
    }

</script>
</html>