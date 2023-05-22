<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">

        <h3>id : ${task.id} タスクの内容</h3>

        <p>内容：<c:out value="${task.content}" /></p>
        <font size="1">作成日時：<fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></font>
        <br>
        <font size="1">更新日時：<fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></font>

        <p><a href="${pageContext.request.contextPath}/index">リストにもどる</a></p>
        <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">タスク内容の編集</a></p>


    </c:param>
</c:import>
