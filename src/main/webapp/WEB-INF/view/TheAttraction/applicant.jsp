<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/2
  Time: 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>报名人数</title>
</head>
<body>
    <table>
        <tr>
            <td>序号</td>
            <td>头像</td>
            <td>报名人</td>
        </tr>
            <c:forEach items="${theAttraction.theAttractionApplicants}" var="tu" varStatus="s">
                <tr>
                    <td>${s.index +1 }</td>
                    <td><img src="${pageContext.request.contextPath}${tu.users.userInfo.headPortrait }" style="width: 50px;height: 50px"></td>
                    <td>${tu.users.userInfo.nickName }</td>
                </tr>
            </c:forEach>
    </table>
</body>
</html>
