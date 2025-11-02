package com.example.controller;

import com.example.service.CourseService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * Handles requests for the home page and forwards data to the JSP view.
 */
@WebServlet(name = "HomeController", urlPatterns = "/home")
public class HomeController extends HttpServlet {

    private final CourseService courseService = new CourseService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("courses", courseService.findFeaturedCourses());
        req.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(req, resp);
    }
}
