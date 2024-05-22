<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employees</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <h3>
            <a href="<%=request.getContextPath()%>/" class="navbar-brand text-center">List of Employee</a>
        </h3>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <c:choose>
            <c:when test="${user != null}">
            <form action="update" method="post">
                <h2>Edit User</h2>
                <input type="hidden" name="id" value="<c:out value='${user.id}'/>"/>
                </c:when>
                <c:otherwise>
                <form action="insert" method="post">
                    <h2>Add New Employee</h2>
                    </c:otherwise>
                    </c:choose>

                    <fieldset class="form-group">
                        <label class="mt-2">Employee Name</label>
                        <input class="form-control" name="name" required="required" type="text"
                               value="<c:out value='${user.name}'/>">
                    </fieldset>
                    <fieldset class="form-group mt-2">
                        <label class="mt-2">Employee birthday</label>
                        <input class="form-control" name="birthday" required="required" type="text"
                               value="<c:out value='${user.birthday}'/>">
                    </fieldset>
                    <fieldset class="form-group mt-2">
                        <label class="mt-2">Employee address</label>
                        <input class="form-control" name="address" required="required" type="text"
                               value="<c:out value='${user.address}'/>">
                    </fieldset>
                    <fieldset class="form-group mt-2">
                        <label class="mt-2">Employee position</label>
                        <input class="form-control" name="position" required="required" type="text"
                               value="<c:out value='${user.position}'/>">
                    </fieldset>
                    <fieldset class="form-group mt-2">
                        <label class="mt-2">Employee department</label>
                        <input class="form-control" name="department" required="required" type="text"
                               value="<c:out value='${user.department}'/>">
                    </fieldset>
                    <button type="submit" class="btn btn-success mt-2 w-100">Submit</button>
                    <button type="reset" class="btn btn-success mt-2 w-100">Reset</button>
                </form>
        </div>
    </div>
</div>
</body>
</html>
