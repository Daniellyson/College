<%@ include file="../include/importTags.jsp" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div>
            <div>
                <tiles:insertAttribute name = "main-content" />
            </div>
        </div>
    </body>
</html>