package com.sinai.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;

import java.sql.PreparedStatement;

import javax.sql.DataSource;

import com.sinai.service.CourseService;

/**
 * Handles requests for the home page and forwards data to the JSP view.
 */
@WebServlet(name = "HomeController", urlPatterns = "/home")
public class HomeController extends HttpServlet {

    private final CourseService courseService = new CourseService();
    private DataSource connectionDataSource;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        try {
            ServletContext context = config.getServletContext();
            this.connectionDataSource = (DataSource) context.getAttribute("DB_CONNECTION");
        } catch (Exception e) {
          System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sql = "INSERT INTO registros (nome, idade) VALUES (?, ?)";
        try (Connection connection = connectionDataSource.getConnection()) {        

            PreparedStatement sqlQuery = connection.prepareStatement(sql);
            sqlQuery.setString(1, "Cleiton");
            sqlQuery.setInt(2, 25);
            
            sqlQuery.executeUpdate();
            } catch (Exception e) {
                e.getStackTrace();
                System.out.println("Erro ao executar a query: " + e.getMessage());
            }

        req.setAttribute("courses", courseService.findFeaturedCourses());
        req.getRequestDispatcher("/WEB-INF/views/pages/home.jsp").forward(req, resp);
    }
}
