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
    <div class="container-home">
        <p>Seja bem-vindo a casa de repouso Monte Sinai.</p> <br/>
        <p>Aqui você encontrará os melhores serviços para seus entes queridos.</P>
        <p>Trabalhamos com dedicação e carinho para garantir o bem-estar e a felicidade de todos os nossos residentes.</p>
        <p>Venha nos visitar e conhecer nossas instalações.</p><br/>

        <div class="container-imagens">
            <img class="imagem1" src="${pageContext.request.contextPath}/static/images/Evento_dentro_da_clinica.jpg"/>
            <img class="imagem2" src="${pageContext.request.contextPath}/static/images/Entrada_clinica.jpg"/>
            <img class="imagem3" src="${pageContext.request.contextPath}/static/images/Musico_sendo_abracado.jpg"/>
        </div>
        <div class="container-texto-das-imagens">
            <div class="container-texto-imagem1">
                <br/>
                Evento de música dentro da clínica <br/> <br/>
                12 de setembro de 2022
            </div>
            <div class="container-texto-imagem2">
                <br/>
                Evento de doações de alimentos não perecíveis ao Lar Mont Sinai 
                Idealizado pela aluna Anna Giulia Muniz, com apoio do professor 
                Thiago Santana e Coordenadora Fernanda Brito. <br/>
                Além de trabalhar com a arrecadação de alimentos, teve 
                como objetivo promover a interação social com a terceira idade e 
                conscientizar a todos da importância de ter um olhar mais generosos 
                com os idosos <br/> <br/>
                2 de dezembro de 2019
            </div>
            <div class="container-texto-imagem3">
                <br/> 
                Visita do @williamsertanejo ao Monte Sinai <br/> <br/>
                18 de abril de 2019
            </div>
        </div> <br/>
        <h1>Principais serviços</h1>
        <div class="container-images-services">
            <img class="imagem4" src="${pageContext.request.contextPath}/static/images/Hospedagem_assistida.jpg"/>
            <img class="imagem5" src="${pageContext.request.contextPath}/static/images/Fisioterapia.webp"/>
            <img class="imagem6" src="${pageContext.request.contextPath}/static/images/Acompanhamento_nutricional.jpg"/>
            <img class="imagem7" src="${pageContext.request.contextPath}/static/images/Atividades_de_convivencia.jpg"/>
        </div>
        <div class="container-text-services">
            <div class="container-texto-imagem4"><p>Hospedagem assistida</p></div>
            <div class="container-texto-imagem5"><p>Fisioterapia</p></div>
            <div class="container-texto-imagem6"><p>Acompanhamento nutricional</p></div>
            <div class="container-texto-imagem7"><p>Atividades de convivência</p></div>
        </div>

    </div>
    </layout:main>
    <layout:footer /> 
</body>
</html>
