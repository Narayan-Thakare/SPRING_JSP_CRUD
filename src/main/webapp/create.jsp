<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Student</title>
</head>
<body>
    <h1>Create Student</h1>
    <form action="<c:url value='/create' />" method="post">
        Roll: <input type="text" name="roll" /><br/>
        Name: <input type="text" name="name" /><br/>
        Address: <input type="text" name="address" /><br/>
        <input type="submit" value="Create" />
    </form>
</body>
</html>
