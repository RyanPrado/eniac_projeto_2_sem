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
    <layout:header heading="CONTATO" show_button="false"/>
    <layout:main>
        <div class="container-contactForm">
            <fieldset class="contactForm">
                <legend>Fale Conosco</legend>
                <form name="contactForm" method="post" action="${pageContext.request.contextPath}/submitContact">
                    <div class="internal-contactForm">
                        Bem vindo(a) à área contato, escreva a sua dúvida ou sugestão e entraremos em contato com você. <br><br>
                        <label for="name">Nome:</label><br>
                        <input class="name-input"type="text" id="name" name="name"><br><br>
                        <label for="email">Email:</label><br>
                        <input class="email-input"type="email" id="email" name="email"><br><br>
                        <label for="message">Mensagem:</label><br>
                        <textarea class="message-input"id="message" name="message" rows="4" cols="50"></textarea><br><br>
                        <components:button label="Enviar" severity="primary" type="submit" />
                    </div>
                </form>
            </fieldset>
        </div>
    </layout:main>
    <layout:footer /> 
</body>
</html>
