package com.sinai.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.sinai.service.ContactService;

import jakarta.servlet.annotation.MultipartConfig;

/**
 * Handles requests for the contact page.
 */
@WebServlet(name = "ContactController", urlPatterns = "/contact")
@MultipartConfig
public class ContactController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/pages/contact.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DataSource dataSource = (DataSource) getServletContext().getAttribute("DB_CONNECTION");
        if (dataSource == null) {
            System.out.println("DataSource is null");
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");
            resp.getWriter().write("{\"error\": \"Database not initialized\"}");
            return;
        }

        String firstName = req.getParameter("first_name");
        String lastName = req.getParameter("last_name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String message = req.getParameter("message");

        ContactService contactService = new ContactService(dataSource);

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        try {
            contactService.submitContact(firstName, lastName, email, phone, message);
            resp.getWriter().write("{\"message\": \"Mensagem enviada com sucesso!\"}");
        } catch (IllegalArgumentException e) {
            System.out.println("IllegalArgumentException: " + e.getMessage());
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            resp.getWriter().write("{\"error\": \"" + e.getMessage() + "\"}");
        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            resp.getWriter().write("{\"error\": \"Erro no banco de dados: " + e.getMessage() + "\"}");
        } catch (Exception e) {
            System.out.println("Exception: " + e.getMessage());
            e.printStackTrace();
            resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            resp.getWriter().write("{\"error\": \"Erro interno: " + e.getMessage() + "\"}");
        }
    }
}