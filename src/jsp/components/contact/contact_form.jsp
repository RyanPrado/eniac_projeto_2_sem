<%@ page contentType="text/html; charset=UTF-8" %>
<section class="bg-gray-100 p-6 rounded-lg shadow-md md:max-w-lg mx-auto">
    <form class="contact-form" action="/submitContact" method="post">
        <!-- Form fields for name, email, message, etc. -->
        <div class="flex flex-col md:flex-row md:space-x-4">
            <div class="form-group flex-1">
                <label for="name">Nome:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group flex-1">
                <label for="phone">Telefone:</label>
                <input type="text" id="phone" name="phone" required>
            </div>
        </div>

        <div class="flex flex-col md:flex-row md:space-x-4 mt-4">
            <div class="form-group flex-1">
                <label for="message">Mensagem:</label>
                <textarea id="message" name="message" required></textarea>
            </div>
        </div>


        <button type="submit" class="mt-4 w-full">Enviar</button>
    </form>
</section>