<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/jee-jstlbd"
                   user="root"  password=""/>

<!DOCTYPE html>
<html>
<head>
    <title>Jsp page </title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
            crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"  integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body class="container ">

<sql:query dataSource="${db}" var="rs">
    SELECT * from users;
</sql:query>

<div class="container-fluid mt-4">
    <table class="table">
        <tr>
            <th> ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
            <th>Login</th>
            <th>Password</th>
        </tr>
        <c:forEach var="row" items="${rs.rows}">
            <tr>
                <td><c:out value="${row.id}"/></td>
                <td><c:out value="${row.fistname}"/></td>
                <td><c:out value="${row.lastname}"/></td>
                <td><c:out value="${row.age}"/></td>
                <td><c:out value="${row.login}"/></td>
                <td><c:out value="${row.pwd}"/></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>