<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../header.jsp"/>
<div class="container">
    <div class="main-bar">
        <jsp:include page="../nav.jsp"/>
        <div class="list-group">
            <c:forEach items="${posts}" var="post">
                <li class="list-group-item" >
                    <div class="post-right">
                            ${post.commentsNumber}
                    </div>
                    <div class="post-top">
                        <a href="/p/${post.id}">${post.title}</a>
                    </div>
                    <div class="post-bottom">
                        作者：<a href="/u/${post.userUsername}">${post.userUsername}</a>
                        创建时间：<spring:eval expression="post.createTime"/>
                        最后回复时间：<spring:eval expression="post.lastTime"/>
                    </div>

                </li>
            </c:forEach>
        </div>
        <jsp:include page="../page.jsp"/>
    </div>
    <jsp:include page="../sidebar.jsp"/>
</div>
<jsp:include page="../footer.jsp"/>
</body>
</html>
