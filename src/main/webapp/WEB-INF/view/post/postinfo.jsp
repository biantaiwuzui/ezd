<%--
  Created by IntelliJ IDEA.
  User: JayJay
  Date: 2017/4/27
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
</head>
<body>
<div id="body">
</div>

<script>
    $(document).ready(function () {
        $.ajax({
            type:"get",
            url:"${pageContext.request.contextPath}/post/find/1",
            dataType:"json",
            success:function (v) {
                console.log(v);
                var str="";

                    str+="<p>"+v.post_title+"("+v.postId+")</p>" ;
                   str+="<p>招聘"+v.recruitmentNumber+"人&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                   str+=""+v.recruitmentDetails.salary+"元/月</p>";
                   str+="<p>工作详情</p>";
                   str+="<ul>";
                   str+="<li>"+v.recruitmentDetails.recruitmentDetailsType.recruitmentDetailsTypeName+"</li>";
                   str+="<li>经验要求:"+v.recruitmentDetails.experienceRequirements+"</li>";
                   str+="<li>性别要求:"+v.recruitmentDetails.genderRequirements+"</li>";
                   str+="<li>学历要求:"+v.recruitmentDetails.educationalRequirements+"</li>";
                   str+="<li>公司福利:"+v.recruitmentDetails.companyBenefits+"</li>";
                   str+="</ul>";
                   str+="<h4>工作内容</h4>";
                   str+="<p>"+v.recruitmentDetails.jobContent+"</p>";
                   str+="<h4>工作要求</h4>";
                   str+="<p>"+v.recruitmentDetails.jobRequirements+"</p>";
                   str+="<h3>"+v.enterprise.enterpriseName+"</h3>";
                   str+="<p>正在招聘"+v.enterprise.posts.length+"个有效职位</p>";
                   str+="<p>联系人:"+v.contacts+"</p>";
                   str+="<p>联系方式:"+v.contactInformation+"</p>";
                   str+="<p>工作地点:"+v.enterprise.enterpriseAddress+"</p>";

                $("#body").html(str);
            }
        });
    });
</script>
</body>
</html>
