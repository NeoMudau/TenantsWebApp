<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tenant List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f0fff0;
            color: #2e8b57;
            padding: 20px;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #32CD32;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #32CD32;
            color: white;
        }
        tr:hover {
            background-color: #e0ffe0;
        }
        .button-container {
            margin-top: 30px;
        }
        .nav-button {
            background-color: #32CD32;
            color: white;
            border: none;
            padding: 10px 20px;
            margin: 5px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
        }
        .nav-button:hover {
            background-color: #2e8b57;
        }
    </style>
</head>
<body>
    <h1>Tenant List</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Apartment Number</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Map<String, String>> tenants = (List<Map<String, String>>) request.getAttribute("tenants");
                if (tenants != null && !tenants.isEmpty()) {
                    for (Map<String, String> tenant : tenants) {
            %>
            <tr>
                <td><%= tenant.get("id") %></td>
                <td><%= tenant.get("name") %></td>
                <td><%= tenant.get("email") %></td>
                <td><%= tenant.get("phone") %></td>
                <td><%= tenant.get("apartment") %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="5">No tenants found.</td>
            </tr>
            <% } %>
        </tbody>
    </table>

    <div class="button-container">
        <a href="menu.html" class="nav-button">MENU</a>
        <a href="index.html" class="nav-button">HOME</a>
    </div>
</body>
</html>
