<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/7/30
  Time: 0:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>功能入口</title>
    <base href="<%=basePath%>"/>
</head>
<body>
    <div align="center">
        <p style="size: 20px">ssm</p>
        <table>
            <tr>
                <td><a href="addstudent.jsp" >注册学生</a> </td>
            </tr>

            <tr>
                <td><a href="findstudent.jsp">浏览学生</a>浏览学生</td>
            </tr>

            <tr>
                <td><a href="findstudent.jsp">浏览学生</a>浏览学生</td>
            </tr>

        </table>

    </div>
</body>
</html>
