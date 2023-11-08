<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
</head>
<body>
    <h1>Edit Student</h1>
    <form action="<c:url value='/edit' />" method="post">
        <input type="hidden" name="id" value="${student.id}" />
        Roll: <input type="text" name="roll" value="${student.roll}" /><br/>
        Name: <input type="text" name="name" value="${student.name}" /><br/>
        Address: <input type="text" name="address" value="${student.address}" /><br/>
        <input type="submit" value="Update" />
    </form>
</body>
</html>
