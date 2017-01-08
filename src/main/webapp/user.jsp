<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ include file="commons/inc.jsp" %>
<html>
<head>
    <title>user page</title>
</head>
<body>
<c:if test="${sessionScope.user eq null}">
    <c:redirect url="/"/>
</c:if>
<h1>user page</h1>
user: ${sessionScope.user.username}<br/>
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

    </tr>

   <c:forEach var="user" items="${sessionScope.pagination.list}">
     <c:forEach var="salary" items="${user.salaries}">
        <tr>
            <td>${user.username}</td>
            <td>${salary.month}</td>
            <td>${salary.basic}</td>
            <td>${salary.allowance}</td>
            <td>${salary.reward}</td>
            <td>${salary.insurance}</td>
            <td>${salary.gongJiJin}</td>
            <td>${salary.basic+salary.allowance+salary.reward-salary.insurance-salary.gongJiJin}</td>
      </tr>
    </c:forEach>
   </c:forEach>
</table>
        <c:import url="${ctx}/commons/page.jsp">
            <c:param name="path" value="salary/${sessionScope.pagination.statement}"/>
        </c:import>

        <a href="${ctx}/user/logout">LOG OUT</a>
</body>
</html>
