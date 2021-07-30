<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/7/30
  Time: 10:39
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
    <title>Title</title>
    <base href="<%=basePath%>"/>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript" >

        $(function () {
            load();
            $("#btn").click(function () {

                $("#info").empty()

                load();

            })

        })

        function load() {

            $.ajax({
                url:"student/findStudent",
                dataType:"json",
                type:"get",
                success:function (resp) {
                    $.each(resp,function (i,n) {
                        $("#info").append("<tr>")
                            .append("<td>"+n.id+"</td>")
                            .append("<td>"+n.name+"</td>")
                            .append("<td>"+n.email+"</td>")
                            .append("<td>"+n.age+"</td>")
                            .append("</tr>")
                    })
                }

            })

        }


    </script>

</head>
<body>
    <div align="center">
        <table>
            <thead>
            <tr>
                <td>id</td>
                <td>姓名</td>
                <td>邮箱</td>
                <td>年龄</td>
            </tr>
            </thead>
            <tbody id="info">


            </tbody>
        </table>
        <input type="button" value="查询" id="btn">
    </div>

</body>
</html>
