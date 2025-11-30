package com.sinai.service;

import java.util.List;

import com.sinai.model.Course;

/**
 * Provides demo data for the MVC example. In a real project this would talk to
 * a repository.
 */
public class CourseService {

    public List<Course> findFeaturedCourses() {
        return List.of(
                new Course("JAVA11", "Fundamentos de Java 11",
                        "Conceitos essenciais de Java moderno executando no Tomcat 10."),
                new Course("WEBMVC", "Arquitetura MVC",
                        "Aprenda a construir controladores, serviços e views com Servlets e JSP."),
                new Course("DEVOPS", "Deploy Automatizado",
                        "Integração com pipelines para publicação em ambientes Tomcat."));
    }
}
