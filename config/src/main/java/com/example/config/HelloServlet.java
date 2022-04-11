package com.example.config;

import java.io.*;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        PrintWriter out=response.getWriter();
        request.getRequestDispatcher("links.html").include(request,response);

        ServletContext con=getServletContext();
        out.println(con.getInitParameter("name1"));
        ServletConfig config =getServletConfig();
        out.println(config.getInitParameter("name"));

    }

}