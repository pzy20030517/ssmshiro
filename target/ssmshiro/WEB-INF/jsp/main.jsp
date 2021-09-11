<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${message}<br>
<c:hasPermission name="bookmanager:book:query">
    可以进行查询
</c:hasPermission><br>
<c:hasPermission name="bookmanager:book:add">
    可以进行增加
</c:hasPermission>
<c:hasPermission name="bookmanager:book:update">
    可以进行修改
</c:hasPermission>
<a href="/ssmshiro/handleUser/goDel">删除用户</a>
<a href="/ssmshiro/handleUser/upd">修改用户</a>
<form action="/ssmshiro/handleUser/add" method="post">
    账号：<input type="text" name="username"/><br>
    密码: <input type="password" name="password"><br>
    <input type="submit">
</form>
</body>
</html>
