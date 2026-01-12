package net.banelemdhluli.registration.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import net.banelemdhluli.registration.dao.StudentDAO;
import net.banelemdhluli.registration.model.Student;

import java.io.IOException;

@WebServlet("/register")
public class StudentServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private StudentDAO studentDAO = new StudentDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher dispatcher =
                request.getRequestDispatcher("/studentregister.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // READ VALUES EXACTLY AS IN JSP
    	
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String username = request.getParameter("username");      // fixed
        String password = request.getParameter("password");      // fixed
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");

        // CREATE OBJECT
        
        Student student = new Student();
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setUserName(username);
        student.setPasswordHash(password);
        student.setAddress(address);
        student.setContact(contact);
        student.setEmail(email);

        // SAVE TO DATABASE
        
        studentDAO.insertStudent(student);

        // SEND VALUES TO JSP
        
        request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);
        request.setAttribute("username", username);
        request.setAttribute("email", email);
        request.setAttribute("contact", contact);
        request.setAttribute("address", address);

        RequestDispatcher dispatcher =
                request.getRequestDispatcher("/studentdetails.jsp");
        dispatcher.forward(request, response);
    }
}
