<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layout" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Contato - Monte Sinai</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/app.css">
    <script src="https://cdn.jsdelivr.net/npm/axios@1.13.1/dist/axios.min.js"></script>
</head>
<body>
    <layout:header title="CONTACT" show_button="false"/>
    <layout:main>
        <fieldset>
            <legend>Fale Conosco</legend>
            <form name="contactForm" method="post" action="${pageContext.request.contextPath}/submitContact">
                <label for="name">Nome:</label><br>
                <input type="text" id="name" name="name"><br><br>
                <label for="email">Email:</label><br>
                <input type="email" id="email" name="email"><br><br>
                <label for="message">Mensagem:</label><br>
                <textarea id="message" name="message" rows="4" cols="50"></textarea><br><br>

                <components:button label="Enviar" severity="primary" type="submit" />
            </form>
        </fieldset>
    </layout:main>
    <layout:footer /> 
</body>
</html>