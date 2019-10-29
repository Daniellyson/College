<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="./include/importTags.jsp" %>

<div id="userForm">
    <form:form id="form"
               method="post"
               action="/firstSpring/userInscription/sent"
               modelAttribute="currentUser">

        <form:label path="name">
            <spring:message code="name" />
        </form:label>
        <form:input path="name" type="name" />
        <form:errors path="name" />
        <br><br>
        <form:label path="age">
            <spring:message code="age" />
        </form:label>
        <form:input path="age"  type="age" />
        <form:errors path="age" />
        <br><br>
        <form:radiobutton path="male" value="true" /> <label><spring:message code="boy"/> </label>
        <form:radiobutton path="male" value="false" /> <label><spring:message code="girl"/> </label>
        <br><br>
        <form:select path="hobby">
            <form:options items="${hobbies}" itemValue="name" itemLabel="name" />
        </form:select>
        <br><br>
        <form:button>
            <spring:message code="send" />
        </form:button>

        <core:if test="${error}">${message}</core:if>
    </form:form>
</div>

