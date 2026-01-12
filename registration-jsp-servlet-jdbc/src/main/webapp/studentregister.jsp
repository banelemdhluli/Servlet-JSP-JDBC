<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: "Poppins", sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: orange;
            animation: bgMove 6s infinite alternate ease-in-out;
        }

        @keyframes bgMove {
            from {background-position: left;}
            to {background-position: right;}
        }

        .card {
            width: 28.125rem;
            padding: 2.1875rem 2.5rem;
            border-radius: 1.25rem;
            background: rgba(255,255,255,0.15);
            box-shadow: 0 1.5625rem 3.75rem rgba(0,0,0,.2);
            backdrop-filter: blur(0.75rem);
            color: black;
            animation: dropIn .7s ease;
        }

        @keyframes dropIn {
            from {transform: translateY(-1.5625rem); opacity:0;}
            to {transform: translateY(0); opacity:1;}
        }

        h2 {
            text-align: center;
            margin-bottom: 1.25rem;
            letter-spacing: 0.03125rem;
        }

        .input-wrap {
            position: relative;
            margin-bottom: 1.125rem;
        }

        .input-wrap input {
            width: 100%;
            padding: 0.875rem 2.8125rem 0.875rem 0.9375rem;
            border-radius: 0.75rem;
            border: none;
            outline: none;
            background: rgba(255,255,255,.2);
            color: black ;
            font-size: 0.9375rem;
        }

        .input-wrap input::placeholder {
            color: rgba(255,255,255,.7);
        }

        .input-wrap i {
            position: absolute;
            right: 0.9375rem;
            top: 50%;
            transform: translateY(-50%);
            opacity: .7;
            transition: .3s;
            color: black;
        }

        .input-wrap input:focus + i {
            opacity: 1;
            transform: translateY(-50%) rotate(10deg);
        }

        .btn {
            width: 100%;
            border: none;
            padding: 0.75rem;
            margin-top: 0.3125rem;
            border-radius: 1.875rem;
            background: black;
            font-size: 0.9375rem;
            cursor: pointer;
            color: white;
            font-weight: 600;
            letter-spacing: .3px;
            transition: .3s;
        }

        .btn:hover {
            transform: translateY(-0.125rem) scale(1.15);
            box-shadow: 0 0.625rem 1.5625rem rgba(0,0,0,.25);
        }

        .footer {
            text-align: center;
            margin-top: 0.625rem;
            font-size: 0.9375rem;
            opacity: .8;
        }
    </style>
</head>

<body>

<div class="card">

    <h2><i class="fa-solid fa-graduation-cap"></i> Student Registration</h2>

    <form action="${pageContext.request.contextPath}/register" method="post">

        <div class="input-wrap">
            <input type="text" name="firstName" placeholder="First Name" required>
            <i class="fa-solid fa-user"></i>
        </div>

        <div class="input-wrap">
            <input type="text" name="lastName" placeholder="Last Name" required>
            <i class="fa-solid fa-user"></i>
        </div>

        <div class="input-wrap">
            <input type="text" name="username" placeholder="Username" required>
            <i class="fa-solid fa-id-card"></i>
        </div>

        <div class="input-wrap">
            <input type="password" name="password" placeholder="Password" required>
            <i class="fa-solid fa-lock"></i>
        </div>

        <div class="input-wrap">
            <input type="text" name="address" placeholder="Address" required>
            <i class="fa-solid fa-location-dot"></i>
        </div>

        <div class="input-wrap">
            <input type="text" name="contact" placeholder="Contact Number" required>
            <i class="fa-solid fa-phone"></i>
        </div>

        <div class="input-wrap">
            <input type="email" name="email" placeholder="Email Address" required>
            <i class="fa-solid fa-envelope"></i>
        </div>

        <button type="submit" class="btn">
            <i class="fa-solid fa-paper-plane"></i> Submit Registration
        </button>
    </form>

    <div class="footer">
        © 2026 Student Web App
    </div>

</div>

</body>
</html>

