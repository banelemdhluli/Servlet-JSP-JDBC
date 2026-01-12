package net.banelemdhluli.registration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.banelemdhluli.registration.model.Student;

public class StudentDAO {
	
	// Database variables

    private static final String URL = "jdbc:mysql://localhost:3306/student_registration"; // URL that has your database name
    private static final String USER = "root"; // Username
    private static final String PASSWORD = " "; // Your password

    // Load MySQL driver (important for Tomcat)
    
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("MySQL Driver not found", e);
        }
    }
    
    // Get connection

    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
    
    // insertStudent method

    public boolean insertStudent(Student student) {

        String sql = "INSERT INTO students (first_name, last_name, username, password_hash, address, contact, email) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, student.getFirstName());
            stmt.setString(2, student.getLastName());
            stmt.setString(3, student.getUserName());
            stmt.setString(4, student.getPasswordHash());
            stmt.setString(5, student.getAddress());
            stmt.setString(6, student.getContact());
            stmt.setString(7, student.getEmail());

            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            throw new RuntimeException("Error inserting student", e);
        }
    }
}
