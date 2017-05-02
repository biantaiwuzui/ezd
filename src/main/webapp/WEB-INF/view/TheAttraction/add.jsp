<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加大招会</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/theAttraction/add" method="post" enctype="multipart/form-data">
        标题：<input type="text" name="title" /><br>
        图片：<input type="file" name="file" /><br>
        内容：<input type="text" name="contentBytheAttraction" /><br>
        地址：<input type="text" name="venue" /><br>
        结束时间:<input type="date" name="endTime"><br>
        <input type="submit" value="添加">
    </form>
</body>
</html>
