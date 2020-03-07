<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/page/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="<%=request.getContextPath() %>/res/layui/css/layui.css">
  <script type="text/javascript" src="<%=request.getContextPath()%>/res/js/jquery-1.12.4.min.js"></script>
</head>
<body class="layui-layout-body" >
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a href="<%=request.getContextPath() %>/user/toShow?token=${token}" target="right">用户展示⭐</a>
        </li>
      </ul>
    </div>
</div>
</body>
<SCRIPT type="text/javascript">
	/* $(function(){
		$.fn.zTree.init($("#treeDemo"), setting, data.data);
	}); */
	/* 		var setting = {
			data: {
				simpleData: {
					enable: true,
					idKey:"id",
					pIdKey: "baseId",
				},
				key: {
					name: "baseName"
				}
			}
		};
		
		$(function(){
			$.post(
				"${ctx}/zTree/showZTree?tokenName="+'${tokenName}',
				{},
				function(data){
					$.fn.zTree.init($("#treeDemo"), setting, data.data);
				}
			)
		}); */
	</SCRIPT>
</html>