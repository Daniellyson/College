<%@ include file="../include/importTags.jsp" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link type="text/css" href="<core:url value="/css/main.css" />" rel="stylesheet">
    <title>${title}</title>
</head>
<body>
    <tiles:insertAttribute name="header" />

    <BR>
    <div>
        <tiles:insertAttribute name="main-content" />
    </div>

    <tiles:insertAttribute name="footer" />
</body>
</html>