<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="include/importTags.jsp"%>

<div>
    <h1 c:if test="${!error}">
        <spring:message code="congratulations"/> , ${user}
        <spring:message code="${gift}"/>
    </h1 c:if>
</div>