<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="include/importTags.jsp"%>

<header>

     <img id="logo" src='<spring:url value="/images/dv.jpg"/>'/>
     <div id="locale-wrapper">
          <spring:url var="localeFr" value="">
               <spring:param name="locale" value="fr"/>
          </spring:url>
          <spring:url var="localeEn" value="">
               <spring:param name="locale" value="en"/>
          </spring:url>

          <a href="${localeFr}"><img class="locale-icon" src='<spring:url value="/images/FR.png"/>'></a>
          <a href="${localeEn}"><img class="locale-icon" src='<spring:url value="/images/GB.png"/>'></a>
     </div>

</header>