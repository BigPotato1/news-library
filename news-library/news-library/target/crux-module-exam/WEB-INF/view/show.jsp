<%--
  Created by IntelliJ IDEA.
  User: shenqingwen
  Date: 2020/9/11
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${requestScope.message}<br/>
<c:forEach items="${requestScope.newsList}" var="newsList">
    ${newsList.newsno}
    ${newsList.news_title}
    ${newsList.type.news_typename}
    ${newsList.author.authorname}<br>
</c:forEach>
</body>
</html>
