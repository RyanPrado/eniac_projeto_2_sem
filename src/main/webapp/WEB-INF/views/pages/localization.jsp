<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Sobre - Monte Sinai</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/app.css">
    <script src="https://cdn.jsdelivr.net/npm/axios@1.13.1/dist/axios.min.js"></script>
</head>
<body>
    <layout:header title="LOCALIZAÇÃO"/>
    <layout:main>
        <h2>Onde nos encontrar</h2>
        <p>R. Anselmo Fornasaro, 194 - Jardim Bom Clima, Guarulhos - SP, 07196-240</p>
        <div id="map" style="height: 400px; width: 100%;">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3660.236857393491!2d-46.520518126606056!3d-23.45191931087149!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce8ab52db8212b%3A0xfc9259bda22ba790!2sClinica%20de%20Reposuo%20Monte%20Sinai!5e0!3m2!1spt-BR!2sbr!4v1762464791675!5m2!1spt-BR!2sbr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        
    </layout:main>
    <layout:footer /> 
</body>
</html>