<%@ include file="/WEB-INF/jspf/global-taglibs.jsp" %>
<%@ attribute name="title" required="true" %>
<%@ attribute name="show_button" required="false" %>
<%@ tag dynamic-attributes="dynamicAttrs" pageEncoding="UTF-8" %>
<c:set var="classValue" value="header-main" />
<c:if test="${not empty dynamicAttrs['class']}">
    <c:set var="classValue" value="${classValue} ${dynamicAttrs['class']}" />
</c:if>

<c:set var="title" value="${title}" />
<c:set var="show_button" value="${show_button}" />
<c:if test="${show_button == null}">
    <c:set var="show_button" value="true" />
</c:if>

<header class="${classValue}">
    <h1>${title}</h1>
    <nav>
        <a href="${pageContext.request.contextPath}/">Home</a>
        <a href="${pageContext.request.contextPath}/localization">Localização</a>
        <a href="${pageContext.request.contextPath}/contact">Contato</a>
    </nav>
    <c:if test="${show_button}">
        <components:button label="Fale Conosco" severity="primary" class="TEST"/>
    </c:if>
</header>

<script>
    // Você pode adicionar scripts relacionados ao cabeçalho aqui, se necessário
</script>