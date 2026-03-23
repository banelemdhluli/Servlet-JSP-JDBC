🧑‍🎓 Student Registration Web Application

An elegant Java Web Application that allows users to register students and store their information in a MySQL database. Built with JSP, Servlets, JDBC, and MySQL, this project demonstrates the fundamentals of web development using Java EE.

👤 Author: Banele Mdhluli
💻 Language: Java
🛠️ IDE: Eclipse
🧑‍💻 MySQL

---
## 🧭 How It Works 

1️⃣ User opens studentregister.jsp
2️⃣ Fills in the form ✍️
3️⃣ Data sent to StudentServlet 🚀
4️⃣ Servlet creates Student object 🧩
5️⃣ StudentDAO stores data in MySQL 💾
6️⃣ Redirects to studentdetails.jsp showing success 🎉

---
## ✨ Features

📝 Student registration form
🔐 Secure password handling via hashed field variable
💾 Persist student data in MySQL
📄 Success page displaying submitted details
🎨 Modern UI with animations & icons
🚀 Follows MVC pattern (Model–View–Controller)

---
## 🛠️ Technologies Used

☕ Java
🌐 JSP & Servlets
🗄️ MySQL Database
🔌 JDBC
🧰 Tomcat / any compatible servlet container
🎨 HTML, CSS, Font Awesome

---
## SQL QUERY

CREATE DATABASE student_registration;

USE student_registration;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    username VARCHAR(250),
    password_hash VARCHAR(50),
    address VARCHAR(50),
    contact VARCHAR(50),
    email VARCHAR(50),
);

---
## 📂 Project Structure

src/
 └── net.banelemdhluli.registration
      ├── model
      │    └── Student.java
      ├── dao
      │    └── StudentDAO.java
      └── controller
           └── StudentServlet.java

webapp/
 ├── studentregister.jsp
 └── studentdetails.jsp

---
## 📂 Dependecies

1. servlet api 2.5 jar
2. jstl 1.2 jar
3. jsp api 2.2 jar
4. mysql connector j 9.4 jar

---
## ▶️ HOW TO RUN

Make sure MySQL Server is running.

📥 Clone/download the project
🏗️ Import into Eclipse
🐱‍🏍 Add Tomcat server
▶️ Run the project on server
🌍 Open in web browser
  
  http://localhost:8080/registration-jsp-servlet-jdbc/register

---
## Pages

📝 Student Registration Form
🎉 Registration Success Page

---
## 📝 LICENSE

This project is for educational use and free to modify.
