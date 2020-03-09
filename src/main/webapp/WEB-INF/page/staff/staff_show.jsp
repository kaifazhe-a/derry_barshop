<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/res/layui/css/layui.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/layui/layui.all.js"></script>
<title>理发师信息展示</title>
</head>
<body bgcolor="LightCyan">
<form id="frm">
    <c:forEach items="${boList}" var="list">
        <table class="layui-table">
            <tr>
                <th>员工样貌</th>
                <th>理发师</th>
                <th>项目（级别）</th>
                <th>项目价格(元)</th>
                <th>员工状态</th>
                <th>进行操作</th>
            </tr>
            <tr>
                <td><img src="${list.staffImg}" width="50px" height="50px"></td>
                <td>${list.staffName}</td>
                <td>${list.roleName}</td>
                <td>￥${list.itmePrice}</td>
                <td>${list.baseStaffStatus}</td>
                <th>
                    <c:if test="${list.baseStaffStatus == '空闲'}"><input type="button" value="消费" onclick="consumption()" class='layui-btn layui-btn-danger layui-btn-radius'/></c:if>
                    <c:if test="${list.baseStaffStatus == '工作'}"><input type="button" value="工作中"class="layui-btn layui-btn-radius layui-btn-disabled"/></c:if>
                </th>
            </tr>
        </table>
<%--
        <span >理发师：</span><span style="color: #6362ff">${list.staffName}</span><br>
        <span >项目（级别）：</span><span style="color: #6362ff">${list.roleName}</span><br>
        <span >项目价格(元)：</span><span style="color: #6362ff">￥${list.itmePrice}</span><br>
        <span >工作状态：</span><span style="color: #6362ff">${list.baseStaffStatus}</span><br>--%>

    </c:forEach>

</form>
</body>
<script type="text/javascript">

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