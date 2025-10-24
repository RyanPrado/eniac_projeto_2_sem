<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String PAGE_TITLE = "Home - MONTE SINAI";
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <%@ include file="components/page_head.jsp" %>
  </head>

  <body>
    <%@ include file="components/header.jsp" %>
    <main class="min-h-screen">
        <div class="container mx-auto mt-2 lg:mt-8 px-8">
            <%@ include file="components/home/hero_section.jsp" %>
        </div>
    </main>
    <%@ include file="components/footer.jsp" %>
  </body>
</html>
