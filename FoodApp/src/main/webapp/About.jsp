<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - FoodApp</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            color: #333;
        }
        header {
            background: #007bff;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        .banner {
            background: url('./images/banner-bg.png') no-repeat center center/cover;
            height: 300px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
        .banner h2 {
            font-size: 2.5rem;
            margin: 0;
        }
        .section {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 40px 20px;
            margin: 20px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .section h2 {
            color: #007bff;
            margin-bottom: 20px;
        }
        .team-member {
            border: 1px solid #dee2e6;
            border-radius: 8px;
            padding: 20px;
            transition: transform 0.3s, box-shadow 0.3s;
            background-color: #f8f9fa;
        }
        .team-member:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0,0,0,0.2);
        }
        .team-member img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            object-fit: cover;
        }
        footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: relative;
        }
        .icon {
            font-size: 40px;
            color: #007bff;
            transition: transform 0.3s;
        }
        .icon:hover {
            transform: scale(1.2);
        }
    </style>
</head>
<body>

    <header>
        <h1>FoodApp</h1>
    </header>

    <section class="banner">
        <h2>About Us</h2>
    </section>

    <section class="section">
        <div class="container text-center">
            <h2>Meet Our Team</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="images/rajusingh.jpg" alt="Raju" class="rounded-circle mb-3">
                        <h4>Raju Singh</h4>
                        <p>CEO & Founder</p>
                        <p>Raju is a visionary leader dedicated to revolutionizing the food delivery experience.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="images/vijiay.jpg" alt="Vijay" class="rounded-circle mb-3">
                        <h4>Vijay Kumar</h4>
                        <p>Chief Technology Officer</p>
                        <p>Vijay combines technical expertise with a passion for culinary innovation to enhance our platform.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="team-member">
                        <img src="images/aditi.jpg" alt="Aditi" class="rounded-circle mb-3">
                        <h4>Aditi Sharma</h4>
                        <p>Head of Marketing</p>
                        <p>Aditi is the creative powerhouse behind our marketing strategies, driving engagement and growth.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container text-center">
            <h2>Our Partners</h2>
            <p>At FoodApp, we collaborate with a variety of local restaurants and food producers to bring you the best dining options. Our partners share our commitment to quality and sustainability, ensuring that you receive the freshest ingredients and most flavorful meals. Here are some of our esteemed partners:</p>
            <ul class="list-unstyled">
                <li><strong>Fresh Local Farms:</strong> Sourcing organic vegetables and fruits directly from local farms.</li>
                <li><strong>Artisan Bakeries:</strong> Providing freshly baked bread and pastries made with traditional techniques.</li>
                <li><strong>Local Restaurants:</strong> Featuring a diverse range of cuisines from beloved local chefs.</li>
                <li><strong>Craft Beverage Makers:</strong> Offering a selection of locally crafted beverages to complement your meals.</li>
            </ul>
        </div>
    </section>

    <section class="section">
        <div class="container text-center">
            <h2>Frequently Asked Questions (FAQs)</h2>
            <p>Have questions? We have answers! Here are some of the most commonly asked questions by our users:</p>
            <div>
                <h5>1. How do I place an order?</h5>
                <p>Simply browse our menu, select your favorite dishes, and click on 'Order Now' to proceed to checkout.</p>
                <h5>2. Can I customize my order?</h5>
                <p>Absolutely! You can add special instructions for your meals while placing your order.</p>
                <h5>3. What payment methods do you accept?</h5>
                <p>We accept all major credit cards, debit cards, and various digital wallets for your convenience.</p>
                <h5>4. How can I track my order?</h5>
                <p>After placing your order, you'll receive a tracking link via email to monitor its status in real-time.</p>
                <h5>5. What should I do if there is an issue with my order?</h5>
                <p>Please contact our customer support through the app or website, and we will resolve it as quickly as possible.</p>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 FoodApp. All rights reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
