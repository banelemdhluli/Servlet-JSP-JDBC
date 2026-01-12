<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration – Success</title>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", sans-serif;
            background: linear-gradient(135deg, #43cea2, #185a9d);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .success-card {
            background: #ffffff;
            padding: 2.5rem 2.1875rem;
            width: 32.5rem;
            text-align: center;
            border-radius: 1rem;
            box-shadow: 0 1.25rem 2.5rem rgba(0, 0, 0, 0.2);
            animation: fadeIn 0.8s ease;
        }

        .success-icon {
            font-size: 4.375rem;
            color: #2ecc71;
            margin-bottom: 0.9375rem;
        }

        .details-box {
            background: #f6f7fb;
            border-radius: 0.75rem;
            padding: 1.125rem 1.375rem;
            text-align: left;
            margin-top: 0.9375rem;
            font-size: 0.875rem;
            line-height: 1.6;
        }

        .btn {
            display: inline-block;
            margin-top: 1.125rem;
            text-decoration: none;
            background: #2ecc71;
            color: white;
            padding: 0.75rem 1.5625rem;
            border-radius: 1.375rem;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background: #27ae60;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(1.25rem); }
            to   { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>

<body>

<div class="success-card">

    <div class="success-icon">
        <i class="fa-solid fa-circle-check"></i>
    </div>

    <h2>Registration Successful 🎉</h2>
    <p>The student has been successfully registered in the system.</p>

    <div class="details-box">
        <div><strong>First Name:</strong> ${firstName}</div>
        <div><strong>Last Name:</strong> ${lastName}</div>
        <div><strong>Username:</strong> ${username}</div>
        <div><strong>Email:</strong> ${email}</div>
        <div><strong>Contact:</strong> ${contact}</div>
        <div><strong>Address:</strong> ${address}</div>
    </div>

    <a href="${pageContext.request.contextPath}/studentregister.jsp" class="btn">
        <i class="fa-solid fa-user-plus"></i> Register Another Student
    </a>

</div>

</body>
</html>

