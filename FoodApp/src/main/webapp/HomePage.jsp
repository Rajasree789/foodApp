<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList,java.util.Set,java.util.HashSet" %>
<%@ page import="com.foodapp.dto.Restaraunt,com.foodapp.daoImpl.Cart " %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food App - Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Arial:wght@400&family=Verdana:wght@400&display=swap" rel="stylesheet">

    <style>
        /* Custom Navbar Styling with Bootstrap Icon as Logo */
        .navbar {
            background-color: #343a40;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: background-color 0.5s ease-in-out;
        }

        .navbar:hover {
            background-color: #495057;
        }

        .navbar .logo {
            font-size: 1.5rem;
            color: white;
            font-weight: bold;
            display: flex;
            align-items: center;
        }

        .navbar .logo .bi-basket3 {
            font-size: 2rem;
            margin-right: 10px;
        }

        .navbar-nav .nav-link {
            color: white !important;
            transition: color 0.3s ease-in-out;
        }

        .navbar-nav .nav-link:hover {
            background-color: #007bff;
            border-radius: 5px;
            color: #f8f9fa !important;
        }

        /* Body Background */
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }

        /* Jumbotron Section */
        .jumbotron {
            background: url('https://images.unsplash.com/photo-1592082209521-2b3f623da8a5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDExMHx8YXJ0fGVufDB8fHwxNjk4NjU1MjEy&ixlib=rb-4.0.3&q=80&w=1080') no-repeat center center;
            background-size: cover;
            color: white;
            padding: 100px 0;
            text-align: center;
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.7);
            margin-bottom: 30px;
            animation: fadeIn 1.5s ease-in-out;
        }

        .jumbotron h1 {
            font-size: 4em;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
        }

        .jumbotron p {
            font-size: 1.5em;
            margin-top: 20px;
        }

        /* Ensure uniform card height */
        .card {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            height: 100%;
        }

        /* Ensure uniform image height and card image fit */
        .card img {
            width: 100%;
            height: 200px; /* Fixed height for images */
            object-fit: cover; /* Ensures the image covers the area without stretching */
            border-radius: 10px 10px 0 0; /* Optional: Rounded corners for images */
        }

        /* Ensure the card body has consistent padding */
        .card-body {
            flex-grow: 1;
            padding: 15px;
            text-align: center;
        }

        /* Set minimum heights for content to align the text */
        .card-body h3 {
            min-height: 60px; /* Ensures all titles take the same space */
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .card-body p {
            min-height: 40px;
        }

        .view-menu-btn {
            background-color: #007bff;
            color: white;
        }

        .view-menu-btn:hover {
            background-color: #0056b3;
            color: white;
        }

        /* Animation Styles */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .testimonial, .contact {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        /* Styled Form */
        .contact form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .form-control {
            border-radius: 5px;
            padding: 10px;
            border: 1px solid #ced4da;
            transition: border-color 0.3s ease;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .btn-submit {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand logo" href="About.jsp">
                <i class="bi bi-basket3"></i> FoodApp
            </a>
            <div class="navbar-nav">
                <a href="LoginPage.html" class="nav-link btn btn-success mx-2">
                    <i class="bi bi-box-arrow-in-right"></i> Login
                </a>
                <a href="RegisterPage.html" class="nav-link btn btn-primary">
                    <i class="bi bi-person-plus"></i> Register
                </a>
            </div>
        </div>
    </nav>

    <!-- Jumbotron Section -->
    <div class="jumbotron">
        <div class="container">
            <h1>Welcome to Our Food App!</h1>
            <p>Indulge in the finest culinary experiences delivered right to your doorstep.</p>
        </div>
    </div>

    <!-- Restaurant Details Section -->
    <div class="container my-5">
        <div class="row">
            <% 
                ArrayList<Restaraunt> restaurantList = (ArrayList<Restaraunt>) session.getAttribute("restaurantList");
                if (restaurantList != null && !restaurantList.isEmpty()) {
                    Set<String> restaurantNames = new HashSet<>();
                    for (Restaraunt res : restaurantList) {
                        if (!restaurantNames.contains(res.getname())) {
                            restaurantNames.add(res.getname());
            %>
                            <div class="col-md-3 mb-4"> <!-- Changed to col-md-3 for four columns -->
                                <div class="card fadeIn">
                                    <img src="<%= res.getimgPath() %>" alt="Image of <%= res.getname() %>">
                                    <div class="card-body">
                                        <h3><%= res.getname() %></h3>
                                        <p><strong>Cuisine:</strong> <%= res.getCusineType() %></p>
                                        <p><strong>Delivery Time:</strong> <%= res.getDeliveryTime() %> mins</p>
                                        <p><strong>Rating:</strong> ⭐⭐⭐⭐</p>
                                        <a href="MenuServlet?restaurantId=<%= res.getrId() %>" class="btn view-menu-btn">View Menu</a>
                                    </div>
                                </div>
                            </div>
            <%
                        }
                    }
                } else {
            %>
                <p class="text-center">No restaurants available at the moment.</p>
            <%
                }
            %>
        </div>
    </div>

    <!-- Testimonials Section -->
    <div class="container my-5">
        <h2 class="text-center">What Our Customers Say</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="testimonial slideIn">
                    <p>"The freshness of the ingredients is amazing! My family loves the meals." - Sarah L.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial slideIn">
                    <p>"Fast delivery and excellent customer service. Highly recommend!" - James P.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial slideIn">
                    <p>"Great variety of cuisines. I love ordering from here!" - Lisa M.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Contact Us Section -->
    <div class="container contact my-5">
        <h2 class="text-center">Contact Us</h2>
        <form action="ContactServlet" method="post">
            <input type="text" class="form-control" name="name" placeholder="Your Name" required>
            <input type="email" class="form-control" name="email" placeholder="Your Email" required>
            <textarea class="form-control" name="message" rows="5" placeholder="Your Message" required></textarea>
            <button type="submit" class="btn btn-submit">Send Message</button>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
