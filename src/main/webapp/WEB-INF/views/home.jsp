<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Monte Sinai</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/app.css">
</head>
<body>
    <header>
        <h1>calção 5</h1>
        
        <nav>
            <a href="${pageContext.request.contextPath}/">Home</a>
            <a href="${pageContext.request.contextPath}/about">Sobre</a>
            <a href="${pageContext.request.contextPath}/contact">Contato</a>
        </nav>

        <c:set var="numeros" value="${[1, 2 ,3, 4, 5, 6, 7]}" />

        <ul>
            <c:forEach items="${numeros}" var="numero"> 
                <li style="color: yellow;">
                    ${numero} 
                </li>
            </c:forEach>
        </ul>

        <c:if test="${1 > 0}"> 
             <p>
                <c:out value="${numero}" /> 
            </p>
        </c:if>
    </header>
    <main></main>
    <footer></footer>
</body>
</html>
