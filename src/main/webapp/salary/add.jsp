<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>salary add page</title>
    </head>
    <body>
        <h1>ADD Salary</h1>
        <form action="${ctx}/salary/add" method="post">
            <!--将查询的所有的user用户，以下拉列表的形式展现出来-->
            <select name="userId">
                <c:forEach var="user" items="${sessionScope.users}">
                    <option value="${user.id}">${user.username}</option>
                </c:forEach>
            </select><br>
            <input name="month" placeholder="MONTH" value="2016年1月"><br>
            <input name="basic" placeholder="BASIC" value="1000.00"><br>
            <input name="allowance" placeholder="ALLOWANCE" value="500.00"><br>
            <input name="reward" placeholder="REWARD" value="800.00"><br>
            <input name="insurance" placeholder="INSURANCE" value="100.00"><br>
            <input name="gongJiJin" placeholder="GONGJIJIN" value="200.00"><br>
            <!--<input name="money" placeholder="MONEY"><br>-->
            <!--<input name="userId" placeholder="USERID"><br>-->
            <input type="submit" value="ADD">
        </form>
    </body>
</html>