<%@ include file="/WEB-INF/jspf/global-taglibs.jsp" %>
<%@ attribute name="title" required="true" %>
<%@ tag pageEncoding="UTF-8" %>
<header>
    <h1>${title}</h1>
    <nav>
        <a href="${pageContext.request.contextPath}/">Home</a>
        <a href="${pageContext.request.contextPath}/about">Sobre</a>
        <a href="${pageContext.request.contextPath}/contact">Contato</a>
    </nav>
    <components:button label="Fale Conosco" severity="primary" class="TEST"/>
</header>

<script>
    // Você pode adicionar scripts relacionados ao cabeçalho aqui, se necessário
</script>