<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.foodapp.model.Restaurent" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #e0c3fc 0%, #8ec5fc 100%);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container-wrapper {
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            max-width: 1200px;
            width: 100%;
            position: relative;
        }

        h2 {
            text-align: center;
            background: linear-gradient(135deg, #ff7e5f, #feb47b);
            color: white;
            padding: 20px;
            font-size: 2em;
            margin-bottom: 20px;
            border-radius: 10px 10px 0 0;
        }

        /* History Button */
        .view-history-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .view-history-btn:hover {
            background-color: #2980b9;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 10px;
        }

        .card {
            width: 300px;
            background: linear-gradient(135deg, #fdfbfb 0%, #ebedee 100%);
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s, background-color 0.2s;
            margin: 20px;
            padding: 20px;
            text-align: center;
        }

        .card:hover {
            transform: translateY(-10px);
            background-color: #f9f9f9;
        }

        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .card h3 {
            font-size: 1.5em;
            margin: 10px 0;
            color: #444;
            border-bottom: 2px solid #f0f0f0;
            padding-bottom: 10px;
        }

        .card p {
            font-size: 1em;
            margin: 10px 0;
            color: #555;
        }

        .view-menu-btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 1em;
            color: white;
            background-color: #3498db;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .view-menu-btn:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container-wrapper">
        <h2>Restaurant Details</h2>
        <!-- View History Button -->
        <a href="OrderHistoryServlet" class="view-history-btn">View History</a>

        <div class="container">
            <% 
            // Retrieve the list of restaurants from the session
            ArrayList<Restaurent> restaurantList = (ArrayList<Restaurent>) session.getAttribute("restaurantList");

            // Loop through the ArrayList and display restaurant data if not null
            if (restaurantList != null) {
                for (Restaurent res : restaurantList) {
            %>
                    <div class="card">
                        <h3><%= res.getName() %></h3> 
                        <img src="<%= res.getimgPath() %>" alt="Image of <%= res.getName() %>"> <!-- Display restaurant image -->
                        <p><strong>RID:</strong> <%= res.getrId() %></p>
                        <p><strong>Cuisine Type:</strong> <%= res.getCusineType() %></p>
                        <p><strong>Delivery Time:</strong> <%= res.getDeliveryTime() %> mins</p>
                        <a href="MenuServlet?restaurantId=<%= res.getrId() %>" class="view-menu-btn">View Menu</a>
                    </div>
            <%
                }
            } else {
            %>
                <p>No restaurants available at the moment.</p>
            <%
            }
            %>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>