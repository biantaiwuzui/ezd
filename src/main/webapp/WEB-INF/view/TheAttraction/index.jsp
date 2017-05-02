<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>大招会</title>
</head>
<script src="${pageContext.request.contextPath}/js/jquery-1.7.2.js"></script>
<body>
<table>
    <tr>
        <td>序号</td>
        <td>标题</td>
        <td>开始时间</td>
        <td>图片</td>
        <td>内容</td>
        <td>地址</td>
        <td>结束时间</td>
        <td>报名人数</td>
        <td>操作</td>>
    </tr>
    <c:forEach items="${theAttractions}" var="t" varStatus="s">
        <tr>
            <td>${s.index +1 }</td>
            <td>${t.title}</td>
            <td><fmt:formatDate value="${t.startTime}" pattern="yyyy-MM-dd" /> </td>
            <td><img src="${pageContext.request.contextPath}${t.theAttractionImg}" style="width: 100px;height: 100px"></td>
            <td>${t.contentBytheAttraction}</td>
            <td>${t.venue}</td>
            <td><fmt:formatDate value="${t.endTime}" pattern="yyyy-MM-dd" /></td>
            <td>${t.theAttractionApplicants.size()}</td>
            <td><a href="/theAttraction/${t.id}">查看报名人</a></td>
            <td><button onclick="del(${t.id})">删除</button></td>
        </tr>
    </c:forEach>

<script>
    function del(id){
        if(confirm("你确定要删除该选项！")){
            $.ajax({
                url:"${pageContext.request.contextPath}/theAttraction/del/"+id,
                type:"post",
                dataType:"text",
                success:function(data){
                    alert(data);
                    if(data == "success"){
                        alert("删除成功！");
                        window.location.href = "/theAttraction";
                    }else{
                        alert("服务器繁忙,请重新操作");
                    }
                },
                error:function (data) {
                    alert("服务器繁忙，请稍后再试");
                }
            })
        }else{
            window.location.href = "/theAttraction";
        }
    }
</script>
</table>
</body>
</html>
