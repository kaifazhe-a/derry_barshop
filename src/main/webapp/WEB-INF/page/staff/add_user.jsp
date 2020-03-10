<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/res/validate/jquery.validate.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/res/validate/messages_zh.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/res/layui/layui.all.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/res/md5-min.js"></script>
<title>添加客人</title>
<style type="text/css">
	.error{
		color: red;
	}
</style>
</head>
<body bgcolor="LightCyan">
<form id="frm" enctype="multipart/form-data">
    <table  border="0px"  cellpadding="10" cellspacing="0">
        <input type="hidden" name="salt" value="${salt}" id="salt" />
        <tr>
            <th>客人名：</th>
            <td><input type="text" name="staffName" id="staffName"/><br></td>
        </tr>
        <tr>
            <th>密码：</th>
            <td><input type="text" name="staffPassword" id="pwd" /><br></td>
        </tr>
        <tr>
            <th>确认密码：</th>
            <td><input type="text" name="conPwd" id="conPwd" /><br/></td>
        </tr>
        <tr>
            <th>手机号：</th>
            <td><input type="text" name="staffPhoneEmail" id="staffPhoneEmail" /><br/></td>
        </tr>
                <input type="hidden" name="staffStatus" value="7">
                <input type="hidden" name="roleId" value="7">
        </tr>
        <tr>
            <th colspan="2"><input type="submit" value="
            注册
            " class="layui-btn layui-btn-primary layui-btn-radius"/><%--<input type="button" value="注册" onclick="add()">--%></th>
        </tr>
    </table>
</form>
</body>
<script type="text/javascript">
    /*function add(){
        $.post(
            "<%=request.getContextPath()%>/staff/add",
            $("#frm").serialize(),
            function(data){
                layer.close(index);
                if(data.code == 200){
                    layer.msg(data.msg, {
                        icon: 1,
                        time: 1500 //2秒关闭（如果不配置，默认是3秒）
                    }, function(){
                        parent.location.href="<%=request.getContextPath()%>/staff/toLogin";
                    });
                }else{
                    layer.msg(data.msg, {
                        icon: 2,
                        time: 1500 //2秒关闭（如果不配置，默认是3秒）
                    }, function(){
                        parent.location.href="<%=request.getContextPath()%>/staff/toLogin";
                    });
                }
            }
        )
    }*/
    $(function(){
        $("#frm").validate({
            rules: {
                staffName: {
                    required:true,
                    // 验证用户名是否重复
                    remote: {
                        type:"post",
                        url:"<%=request.getContextPath()%>/staff/before/deWeight",
                        // 请求参数
                        data:{
                            staffName:function(){
                                return $("#staffName").val();
                            }
                        },
                        // 返回类型
                        dataType:"json",
                        // dataFilter 预处理返回的函数
                        dataFilter:function(data, type){
                            if(data == "true"){
                                return true;
                            }else{
                                return false;
                            }
                        }
                    }
                },
                staffPassword: {
                    required:true,
                },
                conPwd: {
                    required:true,
                    equalTo:"#pwd",
                },
                staffPhoneEmail: {
                    isMobile: true,
                    // 验证手机号是否重复
                    remote: {
                        type:"post",
                        url:"<%=request.getContextPath()%>/staff/before/deWeight",
                        // 请求参数
                        data:{
                            staffPhoneEmail:function(){
                                return $("#staffPhoneEmail").val();
                            }
                        },
                        // 返回类型
                        dataType:"json",
                        // dataFilter 预处理返回的函数
                        dataFilter:function(data, type){
                            if(data == "true"){
                                return true;
                            }else{
                                return false;
                            }
                        }
                    }
                },
            },
            errorElement: "span",
            messages:{
                expType:{
                    staffName: "请填写用户名",
                },
                staffPassword:{
                    required: "请填写密码",
                },
                conPwd:{
                    required: "不能为空",
                    equalTo: "密码不一致",
                },
                staffPhoneEmail: {
                    isMobile: "请输入正确的格式",
                },
            },
            submitHandler:function(){
                var index = layer.load();
                $("#pwd").val(md5(md5($("#pwd").val()) + '${salt}'))
                $.post(
                    "<%=request.getContextPath()%>/staff/add",
                    $("#frm").serialize(),
                    function(data){
                        layer.close(index);
                        if(data.code == 200){
                            layer.msg(data.msg, {
                                icon: 1,
                                time: 1500 //2秒关闭（如果不配置，默认是3秒）
                            }, function(){
                                parent.location.href="<%=request.getContextPath()%>/staff/toLogin";
                            });
                        }else{
                            layer.msg(data.msg, {
                                icon: 2,
                                time: 1500 //2秒关闭（如果不配置，默认是3秒）
                            }, function(){
                                parent.location.href="<%=request.getContextPath()%>/staff/toLogin";
                            });
                        }
                    }
                )
            }
        })
    })
    $.validator.addMethod("isMobile", function (value, element) {
        var length = value.length;
        var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;
        return this.optional(element) || (length == 11 && mobile.test(value));
    }, "请填写正确的手机号码格式");
</script>
</html>