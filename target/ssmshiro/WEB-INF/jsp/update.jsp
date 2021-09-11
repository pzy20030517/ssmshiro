<%--
  Created by IntelliJ IDEA.
  User: 小时
  Date: 2021/9/8
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${msg}
<form action="/ssmshiro/handleUser/update" method="post">
    编号：<input type="text" name="uid"><br>
    账号：<input type="text" name="username"/><br>
    密码: <input type="password" name="password"><br>
    <input type="submit">
</form>
</form>
</body>
</html>
