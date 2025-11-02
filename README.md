# Eniac Projeto Integrador 2º Semestre

Ambiente exemplo com arquitetura MVC usando Servlets e JSP para Tomcat 10 (Jakarta EE 9) em Java 11.

## 🧱 Estrutura

- `pom.xml` – configuração Maven com empacotamento WAR
- `src/main/java` – camadas `controller`, `service` e `model`
- `src/main/webapp` – JSPs e assets estáticos

## ▶️ Como executar localmente

1. Garanta o Java 11 instalado (JDK).
2. Rode `mvn clean package` para gerar o artefato WAR.
3. Copie `target/eniac-projeto.war` para o `webapps/` do Tomcat 10 ou configure um contexto.

O servlet principal responde a `/` e encaminha para a view `WEB-INF/views/home.jsp`, exibindo dados fictícios por meio de um serviço de exemplo.

## 🤝 Contribuição

Utilize commits padronizados (Conventional Commits) para manter o histórico organizado.
