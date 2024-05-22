<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Employees</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
<div class="container">
  <table class="table table-bordered">
    <thead>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>birthday</th>
      <th>address</th>
      <th>position</th>
      <th>department</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${listUser}">
      <tr>
        <td><c:out value="${user.id}"/></td>
        <td><c:out value="${user.name}"/></td>
        <td><c:out value="${user.birthday}"/></td>
        <td><c:out value="${user.address}"/></td>
        <td><c:out value="${user.position}"/></td>
        <td><c:out value="${user.department}"/></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  <div class="text-center mb-3">
    <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Employee</a>
  </div>
</div>
</body>
</html>
