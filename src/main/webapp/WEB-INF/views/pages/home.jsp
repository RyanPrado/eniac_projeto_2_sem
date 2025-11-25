<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Monte Sinai</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/app.css">
    <script src="https://cdn.jsdelivr.net/npm/axios@1.13.1/dist/axios.min.js"></script>
</head>
<body>
    <layout:header heading="Home"/>
    <layout:main>
    Seja bem-vindo a casa de repouso Monte Sinai. <br/> <br/>
    Aqui você encontrará os melhores serviços para seus entes queridos. <br/>
    Trabalhamos com dedicação e carinho para garantir o bem-estar e a felicidade de todos os nossos residentes. <br/>
    Venha nos visitar e conhecer nossas instalações. <br/>
    <img src="${pageContext.request.contextPath}/static/images/image-placeholder.jpg"/>
    
    
    
    
    </layout:main>
    <layout:footer /> 
</body>
</html>
