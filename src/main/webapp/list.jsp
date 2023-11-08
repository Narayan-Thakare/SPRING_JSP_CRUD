<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
</head>
<body>
    <h1>Student List</h1>
    <table>
        <tr>
            <th>Roll</th>
            <th>Name</th>
            <th>Address</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${students}" var="student">
            <tr>
                <td><c:out value="${student.roll}" /></td>
                <td><c:out value="${student.name}" /></td>
                <td><c:out value="${student.address}" /></td>
                <td>
                    <a href="<c:url value='/edit/${student.id}' />">Edit</a>
                    <a href="<c:url value='/delete/${student.id}' />">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
