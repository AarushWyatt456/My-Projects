<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>  
<html>  
<head>  
    <meta charset="UTF-8">  
    <title>Confirmation Page</title>  
    <style>  
        /* Styles similar to the previous page for consistent design */  
        body {  
            font-family: 'Poppins', sans-serif;  
            margin: 0;  
            padding: 0;  
            background: linear-gradient(135deg, #ff9a9e 0%, #fad0c4 100%);  
            color: #333;  
            display: flex;  
            justify-content: center;  
            align-items: center;  
            min-height: 100vh;  
        }  

        .container {  
            width: 50%;  
            background-color: #ffffff;  
            padding: 40px;  
            border-radius: 20px;  
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);  
            animation: fadeIn 1s ease-in-out;  
        }  

        h3 {  
            text-align: center;  
            color: #ff6f61;  
            font-size: 36px;  
            margin-bottom: 30px;  
            font-weight: 700;  
            letter-spacing: 1px;  
        }  

        .details {  
            margin: 20px 0;  
            padding: 10px;  
            background-color: #fafafa;  
            border-radius: 10px;  
            border: 1px solid #e0e0e0;  
        }

        .details p {  
            font-size: 16px;  
            color: #555;  
            margin: 10px 0;  
        }

        .button {  
            display: inline-block;  
            padding: 12px 30px;  
            background-color: #ff6f61;  
            color: white;  
            font-size: 16px;  
            text-decoration: none;  
            border-radius: 10px;  
            margin-top: 20px;  
        }

        .button:hover {  
            background-color: #ff4a3d;  
        }
    </style>  
</head>  
<body>  
    <div class="container">  
        <h3>Reservation Confirmed</h3>  

        <!-- Reservation details confirmation display -->
        <div class="details">  
              <p><strong>Id:</strong> ${reservation.id}</p>  
            <p><strong>First Name:</strong> ${reservation.firstName}</p>  
            <p><strong>Last Name:</strong> ${reservation.lastName}</p>  
            <p><strong>Email:</strong> ${reservation.email}</p>  
            <p><strong>Phone:</strong> ${reservation.phone}</p>  
            <p><strong>Date of Birth:</strong> ${reservation.dateOfBirth}</p>  
            <p><strong>Gender:</strong> ${reservation.gender}</p>  
            <p><strong>NRC:</strong> ${reservation.NRC}</p>  
            <p><strong>Meal Preferences:</strong> ${reservation.food}</p>  
            <p><strong>Leaving From:</strong> ${reservation.cityFrom}</p>  
            <p><strong>Going To:</strong> ${reservation.cityTo}</p>  
            <p><strong>Age:</strong> ${reservation.age}</p>  
        </div>  

        <!-- Button to return to the form or home -->
       <a href="bookingForm" class="btn btn-primary">Go Back to Reservation</a>
    </div>  
</body>  
</html>  
