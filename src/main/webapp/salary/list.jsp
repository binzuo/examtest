<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>salary list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
    ${sessionScope.pagination.list}">
        <c:import url="add.jsp"/>
        <hr/>
    <form action="${ctx}/salary/queryUserSalariesByUsernameOrTime" method="post">
        姓名：<input name="username"> 工资月：<input name="time">
        <input type="submit" value="查询">
    </form>
        <hr/>
    <h1>LIST Salary</h1>
         <hr/>
    <table border="1">
            <tr>
                <!--<th>INDEX</th>-->
                <th>员工</th>
                <th>MONTH</th>
                <th>BASIC</th>
                <th>ALLOWANCE</th>
                <th>REWARD</th>
                <th>INSURANCE</th>
                <th>GONGJIJIN</th>
                <th>MONEY</th>
                <!--<th>USERID</th>-->
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="salary" items="${sessionScope.pagination.list}">
                    <tr>
                        <td>${salary.user.username}</td>
                        <td>${salary.month}</td>
                        <td>${salary.basic}</td>
                        <td>${salary.allowance}</td>
                        <td>${salary.reward}</td>
                        <td>${salary.insurance}</td>
                        <td>${salary.gongJiJin}</td>
                        <td>${salary.basic+salary.allowance+salary.reward-salary.insurance-salary.gongJiJin}</td>
                        <td><a href="${ctx}/salary/search/${salary.id}">EDIT</a></td>
                        <td><a class="delete" href="${ctx }/salary/remove/${salary.id}" onclick="return del()">REMOVE</a></td>
                    </tr>
            </c:forEach>
        </table>
        <c:import url="${ctx}/commons/page.jsp">
            <c:param name="path" value="salary/${sessionScope.pagination.statement}"/>
        </c:import>
    </body>
</html>