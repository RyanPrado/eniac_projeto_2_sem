<%@ include file="/WEB-INF/jspf/global-taglibs.jsp" %>
<%@ attribute name="heading" required="true" %>
<%@ attribute name="show_button" required="false" %>
<%@ tag dynamic-attributes="dynamicAttrs" pageEncoding="UTF-8" %>
<c:set var="classValue" value="header-main" />
<c:if test="${not empty dynamicAttrs['class']}">
    <c:set var="classValue" value="${classValue} ${dynamicAttrs['class']}" />
</c:if>

<c:set var="heading" value="${heading}" />
<c:set var="show_button" value="${show_button}" />
<c:if test="${show_button == null}">
    <c:set var="show_button" value="true" />
</c:if>

<header class="${classValue}">
    <nav>
        <a class=link_button_home href="${pageContext.request.contextPath}/"><button class=home_button>Home</button></a>
        <a class=link_localizacao_button href="${pageContext.request.contextPath}/localization"><button class=localizacao_button>Localização</button></a>
        <a class=link_contato_button href="${pageContext.request.contextPath}/contact"><button class=contato_button>Contato</button></a>
    </nav>
    <h1>${heading}</h1>
    <!--<c:if test="${show_button}">
        <components:button label="Fale Conosco" severity="primary" class="TEST"/>
    </c:if> -->
</header>

<script>
    // Você pode adicionar scripts relacionados ao cabeçalho aqui, se necessário
</script>