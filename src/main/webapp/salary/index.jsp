<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>salary index page</title>
    </head>
    <body>
        <h1>Salary INDEX</h1>
        <!--<p><a href="${ctx}/salary/add.jsp">ADD</a></p>-->
        <!--index首页面，点击ADD分析是直接跳到页面还是与服务器发生响应进行
        查询操作后在跳转到页面-->
        <p><a href="${ctx}/user/queryAllUser">ADD</a></p>
        <p><a href="${ctx}/salary/list">LIST</a></p>
    </body>
</html>