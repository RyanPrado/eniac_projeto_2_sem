<%@ include file="/WEB-INF/jspf/global-taglibs.jsp" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="type" required="false" %>
<%@ attribute name="severity" required="false" type="java.lang.String" %>
<%@ tag dynamic-attributes="dynamicAttrs" pageEncoding="UTF-8" %>
<c:set var="classValue" value="<%= severity != null ? \" btn-\" + severity : \"\" %>" />
<c:if test="${not empty dynamicAttrs['class']}">
    <c:set var="classValue" value="${classValue} ${dynamicAttrs['class']}" />
</c:if>
<c:if test="${type == null}">
    <c:set var="type" value="button" />
</c:if>
<button type="${type}" <c:forEach var="entry" items="${dynamicAttrs}"><c:if test="${entry.key != 'class'}">${entry.key}="${entry.value}" </c:if></c:forEach> class="${classValue}">
    ${label}
</button>
