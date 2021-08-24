<%-- 
    Document   : list
    Created on : Aug 23, 2021, 11:20:48 PM
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actividad 2 - MVC con JDBC</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    </head>
    <body>
        <h1>Actividad 2 - MVC con JDBC</h1>
        <table class="table">
            <thead>
                <tr>
                    <td>Id</td>
                    <td>Type</td>
                    <td>Name</td>
                    <td>LastName</td>
                    <td>UserId</td>
                    <td>Password</td>
                    <td>PhoneNumber</td>
                    <td>Email</td>
                    <td>Status</td>
                    <td>StatusClient</td>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.getId()}"/></td>
                <td><c:out value="${user.getType()}"/></td>
                <td><c:out value="${user.getName()}"/></td>
                <td><c:out value="${user.getLastName()}"/></td>
                <td><c:out value="${user.getUserId()}"/></td>
                <td><c:out value="${user.getPassword()}"/></td>
                <td><c:out value="${user.getPhoneNumber()}"/></td>
                <td><c:out value="${user.getEmail()}"/></td>
                <td><c:out value="${user.getStatus()}"/></td>
                <td><c:out value="${user.getStatusClient()}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
