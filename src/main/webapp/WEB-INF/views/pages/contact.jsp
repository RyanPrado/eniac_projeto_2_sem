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
                <form name="contactForm" id="contactForm" method="post" action="${pageContext.request.contextPath}/contact">
                    <div class="internal-contactForm">
                        Bem vindo(a) à área contato, escreva a sua dúvida ou sugestão e entraremos em contato com você. <br><br>
                        <label for="first_name">Primeiro Nome:</label><br>
                        <input class="name-input"type="text" id="first_name" name="first_name"><br><br>
                        <label for="last_name">Sobrenome:</label><br>
                        <input class="name-input"type="text" id="last_name" name="last_name"><br><br>
                        <label for="email">Email:</label><br>
                        <input class="email-input"type="email" id="email" name="email"><br><br>
                        <label for="phone">Telefone:</label><br>
                        <input class="phone-input"type="tel" id="phone" name="phone"><br><br>
                        <label for="message">Mensagem:</label><br>
                        <textarea class="message-input"id="message" name="message" rows="4" cols="50"></textarea><br><br>
                        <components:button label="Enviar" severity="primary" type="submit" />
                    </div>
                </form>
                <div id="server_message" style="margin-top: 10px;"></div>
            </fieldset>
        </div>
    </layout:main>
    <layout:footer />
    <script>
        document.getElementById('contactForm').addEventListener('submit', function(e) {
            e.preventDefault();
            const formData = new FormData(this);
            axios.post('${pageContext.request.contextPath}/contact', formData)
                .then(response => {
                    console.log(response.data);
                    document.getElementById('server_message').innerHTML = '<p style="color: green;">Mensagem enviada com sucesso!</p>';
                    this.reset();
                })
                .catch(error => {
                    const errorMsg = error.response ? error.response.data : 'Erro ao enviar mensagem.';
                    console.log(errorMsg);
                    document.getElementById('server_message').innerHTML = '<p style="color: red;">' + errorMsg.error + '</p>';
                });
        });
    </script>
</body>
</html>
