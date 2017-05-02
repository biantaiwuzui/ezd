<%--
  Created by IntelliJ IDEA.
  User: JayJay
  Date: 2017/4/24
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>招聘岗位</title>
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
</head>
<body>
<div id="body">

    <table>
        <tr>
            <th>企业图片</th>
            <th>岗位名称</th>
            <th>企业名称</th>
            <th>薪水</th>
            <th>地址</th>
            <th>学历要求</th>
            <th>招聘人数</th>
            <th>发布日期</th>
            <th>浏览人数</th>
            <th>操作</th>
        </tr>
        <tbody id="tbody"></tbody>

    </table>

</div>


<script type="text/javascript">
    $(document).ready(function () {
       $.ajax({
           type: "get",
           url:"${pageContext.request.contextPath}/post/findAll",
           dataType: "json",
           success:function (data) {
               var str = "";
               $.each(data,function (i,v) {
                   str+="<tr>";
                   str+="<td><img src="+v.enterprise.enterpriseIcon+"/></td>";
                   str+="<td>"+v.post_title+"</td>";
                   str+="<td>"+v.enterprise.enterpriseName+"</td>";
                   str+="<td>"+v.recruitmentDetails.salary+"</td>";
                   str+="<td>"+v.enterprise.enterpriseAddress+"</td>";
                   str+="<td>"+v.recruitmentDetails.educationalRequirements+"</td>";
                   str+="<td>"+v.recruitmentNumber+"</td>";
                   str+="<td>"+v.sendPostDate+"</td>";
                   str+="<td>"+v.postBrowses.length+"</td>";
                   str+="<td><button class='look' name='"+v.postId+"'>查看</button></td>";
                   str+="</tr>";
               });
               $("#tbody").html(str);
           }
       });
    });
</script>
</body>
</html>
