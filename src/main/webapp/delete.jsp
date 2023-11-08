<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student</title>
</head>
<body>
    <h1>Delete Student</h1>
    <form action="<c:url value='/delete' />" method="post">
        <input type="hidden" name="id" value="${student.id}" />
        Are you sure you want to delete this student?<br/>
        <input type="submit" value="Delete" />
    </form>
</body>
</html>
