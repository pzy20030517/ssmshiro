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
<form action="/ssmshiro/handleUser/detele" method="post">
    编号：<input type="text" name="uid"><br>
    <input type="submit"/>

</form>
</body>
</html>
