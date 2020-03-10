<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/res/layui/css/layui.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/res/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/res/layui/layui.all.js"></script>
<title>营业额展示</title>
</head>
<body bgcolor="LightCyan">
<center>
    <form id="frm">
        <input type="hidden" value="1" name="pageNo" id="page"/>
    </form>
<h2>店内总营业额👇</h2><input type="button" value="￥" id="Amount" class="layui-btn layui-btn-warm"/>
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
    <tr style='color: red'>
        <td>员工姓名</td>
        <td>收入项目</td>
        <td>消费时间</td>
        <td>消费金额</td>
        <td>消费方式</td>
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

    // 营业额展示
    function show() {
        $.post(
        "<%=request.getContextPath()%>/turnover/show",
        $("#frm").serialize(),
        function(data) {
            var html="";
            var pageHtml="";
            var Amount = 0;
            for (var i = 0; i < data.data.length; i++) {
                    var tur = data.data[i];
                    html += "<tr>";
                    if(tur.staffId == -1) {
                        html += "<td>自动收款机（IA）</td>"
                    } else {
                        html += "<td>"+tur.staffName+"</td>";
                    }
                    html += "<td>"+tur.project+"</td>";
                    html += "<td>"+tur.payTime+"</td>";
                    html += "<td>￥"+tur.payPrice+"</td>";
                    html += "<td>"+tur.dictName+"</td>";
                    html += "</tr>";
                    Amount += tur.payPrice;
                }
                $("#tbd").html(html);
                $("#Amount").val(Amount)
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

</script>
</html>