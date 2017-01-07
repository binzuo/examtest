<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>salary edit page</title>
    </head>
    <body>
        <h1>EDIT Salary</h1>
        <form action="${ctx}/salary/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.salary.id}">
            MONTH: <input name="month" value="${sessionScope.salary.month}"><br>
            BASIC: <input name="basic" value="${sessionScope.salary.basic}"><br>
            ALLOWANCE: <input name="allowance" value="${sessionScope.salary.allowance}"><br>
            REWARD: <input name="reward" value="${sessionScope.salary.reward}"><br>
            INSURANCE: <input name="insurance" value="${sessionScope.salary.insurance}"><br>
            GONGJIJIN: <input name="gongJiJin" value="${sessionScope.salary.gongJiJin}"><br>
            MONEY: <input name="money" value="${sessionScope.salary.money}"><br>
            USERID: <input name="userId" value="${sessionScope.salary.userId}"><br>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>