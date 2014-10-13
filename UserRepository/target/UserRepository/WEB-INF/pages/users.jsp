<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/pages/includes.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Users Management</title>
    </head>
<body role="document">

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">User Repository</a>
            </div>
        </div>
    </div>

    <div class="container theme-showcase" role="main">

        <div class="jumbotron">
            <h1>User Data</h1>

            <form:form method="post" action="user.do" commandName="user">
                <p>
                    <form:label path="userId">User ID</form:label>
                    <form:input path="userId"/>
                </p>
                <p>
                    <form:label path="firstName">First Name</form:label>
                    <form:input path="firstName"/>
                </p>
                <p>
                    <form:label path="lastName">Last Name</form:label>
                    <form:input path="lastName"/>
                </p>
                <p>
                    <form:label path="username">Username</form:label>
                    <form:input path="username"/>
                </p>
                <p>
                    <form:label path="password">Password</form:label>
                    <form:input path="password"/>
                </p>
                <input type="submit" name="action" value="Add" class="btn btn-lg btn-primary"/>
                <input type="submit" name="action" value="Edit" class="btn btn-lg btn-success"/>
                <input type="submit" name="action" value="Delete" class="btn btn-lg btn-danger"/>
                <input type="submit" name="action" value="Search" class="btn btn-lg btn-warning"/>
            </form:form>
        </div>

        <div class="page-header">
            <h1>All Users</h1>
        </div>
        <div class="row">
            <div class="col-md-6">
                <table class="table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Username</th>
                        <th>Password</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${userList}" var="user">
                        <tr>
                            <td>${user.userId}</td>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.username}</td>
                            <td>${user.password}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

    </div>

</body>
</html>