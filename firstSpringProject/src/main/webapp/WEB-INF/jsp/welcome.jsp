<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="include/importTags.jsp"%>

<form:form id="form"
           method="POST"
           action="/firstSpring/hello/sent"
           modelAttribute="formMagicKey">

    <form:label path="magicKey">
        <spring:message code="key"/>
    </form:label>
    <form:input path="magicKey"/>
    <form:button>
        <spring:message code="send" />
    </form:button>

</form:form>
