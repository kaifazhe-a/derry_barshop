<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/page/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/res/layui/css/layui.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/res/zTree/zTree_v3/css/zTreeStyle/zTreeStyle.css"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/res/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/res/zTree/zTree_v3/js/jquery.ztree.all.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/res/layui/layui.all.js"></script>
</head>
<body bgcolor="LightCyan">
<div id="tree" class="ztree"></div>
<%--<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
    &lt;%&ndash; <ul class="layui-nav layui-nav-tree"  lay-filter="test">
       <li class="layui-nav-item">
         <a href="<%=request.getContextPath()%>/itme/toShow" target="right">店内项目⭐</a>
         <a href="<%=request.getContextPath()%>/product/toShow" target="right">商品展示⭐</a>
         <a href="<%=request.getContextPath()%>/staff/toShow" target="right">店内人员展示⭐</a>
         <a href="<%=request.getContextPath()%>/vipcard/toShowVipcard" target="right">会员信息⭐</a>
         <a href="<%=request.getContextPath()%>/turnover/toShow" target="right">店内营业额⭐</a>
       </li>
     </ul>&ndash;%&gt;
    </div>
</div>--%>
</body>
<script type="text/javascript">
    var setting = {
        data: {
            simpleData: {
                enable: true,
                pIdKey: "pId",
                idKey: "id",
            },
            key: {
                name: "resourceName",
                url: "xUrl"
            }
        },
        callback: { // 回调函数 1标准的 js event 对象 ; 2对应 zTree 的 treeId，便于用户操控;  3被点击的节点 JSON 数据对象
            onClick: function (event, treeId, treeNode) {
                // 判断是否是父级
                if (!treeNode.isParent){
                    parent.right.location.href="<%=request.getContextPath()%>" + treeNode.url
                }
            }
        }

    };
    $(function(){
        $.post(
            "<%=request.getContextPath()%>/to/left1",
            {},
            function (data) {
                //  zTree 属性   容器       设置         资源数据
                $.fn.zTree.init($("#tree"), setting, data.data);
            });
    });
</script>
</html>