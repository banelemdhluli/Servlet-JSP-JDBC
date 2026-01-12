package net.banelemdhluli.registration.model;

public class Student {

    // Instance variables
	
    private String firstName;
    private String lastName;
    private String userName;
    private String passwordHash;
    private String address;
    private String contact;
    private String email;

    // No-args constructor (required by many frameworks and JSP)
    
    public Student() {
    }

    // Full-args constructor (useful when populating from DAO/Servlet)
    
    public Student(String firstName, String lastName, String userName, String passwordHash,
                   String address, String contact, String email) {

        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.passwordHash = passwordHash;
        this.address = address;
        this.contact = contact;
        this.email = email;
    }

    // Getters & Setters
    
    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPasswordHash() {
        return passwordHash;
    }
    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }

    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    public String getContact() {
        return contact;
    }
    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
}
