<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="include/importTags.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script>
            function click() {
                alert("TEST");
                var node = document.createElement("LI");
                var textnode = document.createTextNode("I said: dont try");
                node.appendChild(textnode);
                document.getElementById("dontClick").appendChild(node);
            }
        </script>
    </head>
    <body>
        <h1>Welcome!</h1>
        <ul id="dontClick">

        </ul>
        <button onclick="click()">dont even try</button>
    </body>
</html>