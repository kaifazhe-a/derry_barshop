<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--
<link rel="stylesheet" href="<%=request.getContextPath() %>/res/layui/css/layui.css"  media="all">
--%>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/validate/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/validate/messages_zh.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/layui/layui.all.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/md5-min.js"></script>
<html>
<head>
    <title>登录</title>
</head>
<body>
<center>
    <form id="frm">
        <table border="0px" cellpadding="10" cellspacing="0">
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="staffName" id="userName" placeholder="用户名/手机号" size="40"/></td>
            </tr>
            <tr>
                <td>密&nbsp;&nbsp;码：</td>
                <td><input type="password" name="staffPassword" id="pwd" size="40"/></td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <a onclick="add()"><span style="color: #1E9FFF">还没有账户？点我去注册</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <th>
                </th>
                <th >
                    <input type="button" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    登录
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                           onclick="login()" class="layui-btn layui-btn-primary layui-btn-radius"/>
                </th>
            </tr>
        </table>
    </form>
</center>
</body>
<script type="text/javascript">
    function login(){
        alert($("#pwd").val());
       $("#pwd").val(md5($("#pwd").val()));
        var index = layer.load();
        $.post(
            "<%=request.getContextPath()%>/staff/login",
            $("#frm").serialize(),
            function (data) {
                layer.close(index);
                    if(data.code == 200){
                        layer.msg(data.msg, {
                            icon: 1,
                            time: 1500 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                            window.location.href = "<%=request.getContextPath()%>/to/index"
                        })
                    }else {
                        layer.msg(data.msg, {
                            icon: 2,
                            time: 1500 //2秒关闭（如果不配置，默认是3秒）
                        }, function () {
                            parent.location.href = "<%=request.getContextPath()%>/user/toLogin"
                        });
                    }
            }
        )
    }
    function add(){
        layer.open({
            type: 2 //Page层类型
            ,area: ['500px', '500px']
            ,title: '你好。'
            ,shade: 0.6 //遮罩透明度
            ,maxmin: true //允许全屏最小化
            ,anim: 1 //0-6的动画形式，-1不开启
            ,content: "<%=request.getContextPath()%>/staff/toAdd"
        });
    }

    if(window.top.document.URL != document.URL){
        window.top.location = document.URL;
    }
</script>
</html>
