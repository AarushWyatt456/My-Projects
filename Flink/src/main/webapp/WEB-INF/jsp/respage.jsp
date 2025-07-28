<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>  
<html>  
<head>  
    <meta charset="UTF-8">  
    <title>Railway Reservation Form</title>  
    <style>  
        /* General Styles */  
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

        @keyframes fadeIn {  
            from { opacity: 0; transform: translateY(-20px); }  
            to { opacity: 1; transform: translateY(0); }  
        }  

        h3 {  
            text-align: center;  
            color: #ff6f61;  
            font-size: 36px;  
            margin-bottom: 30px;  
            font-weight: 700;  
            letter-spacing: 1px;  
        }  

        label {  
            font-weight: 600;  
            margin-bottom: 8px;  
            display: block;  
            font-size: 14px;  
            color: #555;  
        }  

        .form-group {  
            margin-bottom: 25px;  
        }  

        .form-group input, .form-group select, .form-group textarea {  
            width: 100%;  
            padding: 12px;  
            border-radius: 10px;  
            border: 2px solid #e0e0e0;  
            font-size: 14px;  
            margin-top: 5px;  
            background-color: #fafafa;  
            transition: all 0.3s ease;  
        }  

        .form-group input:focus, .form-group select:focus, .form-group textarea:focus {  
            border-color: #ff6f61;  
            background-color: #fff;  
            box-shadow: 0 0 8px rgba(255, 111, 97, 0.2);  
        }  

        .form-group input[type="submit"] {  
            width: 100%;  
            background-color: #ff6f61;  
            color: white;  
            font-size: 16px;  
            font-weight: 600;  
            cursor: pointer;  
            padding: 12px;  
            border-radius: 10px;  
            border: none;  
            transition: background-color 0.3s ease;  
        }  

        .form-group input[type="submit"]:hover {  
            background-color: #ff4a3d;  
        }  

        .error {  
            color: #ff4a3d;  
            font-size: 12px;  
            margin-top: 5px;  
            display: block;  
        }  

        .radio-group, .checkbox-group {  
            margin-bottom: 20px;  
        }  

        .checkbox-group input {  
            margin-right: 10px;  
        }  

        .form-group input[type="radio"], .form-group input[type="checkbox"] {  
            margin-right: 10px;  
        }  

        .form-group select {  
            appearance: none;  
            background: url('data:image/svg+xml;utf8,<svg fill="%23ff6f61" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M7 10l5 5 5-5z"/></svg>') no-repeat right 10px center;  
            background-color: #fafafa;  
        }  

        .form-group input[type="radio"]:checked, .form-group input[type="checkbox"]:checked {  
            border-color: #ff6f61;  
        }

        .form-group input[type="radio"]:checked::before, .form-group input[type="checkbox"]:checked::before {  
            background-color: #ff6f61;  
        }

        /* Custom Checkbox and Radio Buttons */  
        .form-group input[type="checkbox"], .form-group input[type="radio"] {  
            appearance: none;  
            width: 16px;  
            height: 16px;  
            border: 2px solid #ff6f61;  
            border-radius: 3px;  
            cursor: pointer;  
            position: relative;  
            vertical-align: middle;  
        }  

        .form-group input[type="checkbox"]:checked::before, .form-group input[type="radio"]:checked::before {  
            content: '';  
            position: absolute;  
            top: 50%;  
            left: 50%;  
            transform: translate(-50%, -50%);  
            width: 8px;  
            height: 8px;  
            background-color: #ff6f61;  
            border-radius: 2px;  
        }  

        .form-group input[type="radio"] {  
            border-radius: 50%;  
        }  

        .form-group input[type="radio"]:checked::before {  
            border-radius: 50%;  
        }  

    </style>  
</head>  
<body>  
    <div class="container">  
        <h3>Railway Reservation Form</h3>  
        <form:form action="submitForm" modelAttribute="reservation">  
            
             <div class="form-group">  
                <label>Id:</label>  
                <form:input path="id" placeholder="Enter ID plz " />  
                <form:errors path="id" cssClass="error" />  
            </div>  
            <!-- First Name -->  
            <div class="form-group">  
                <label>First Name:</label>  
                <form:input path="firstName" placeholder="Enter your first name" />  
                <form:errors path="firstName" cssClass="error" />  
            </div>  

            <!-- Last Name -->  
            <div class="form-group">  
                <label>Last Name:</label>  
                <form:input path="lastName" placeholder="Enter your last name" />  
                <form:errors path="lastName" cssClass="error" />  
            </div>  

            <!-- Password -->  
            <div class="form-group">  
                <label>Password:</label>  
                <form:input path="pass" type="password" placeholder="Enter your password" />  
                <form:errors path="pass" cssClass="error" />  
            </div>  

            <!-- Email -->  
            <div class="form-group">  
                <label>Email:</label>  
                <form:input path="email" placeholder="Enter your email" />  
                <form:errors path="email" cssClass="error" />  
            </div>  

            <!-- Phone -->  
            <div class="form-group">  
                <label>Phone:</label>  
                <form:input path="phone" placeholder="Enter your phone number" />  
                <form:errors path="phone" cssClass="error" />  
            </div>  

            <!-- Date of Birth -->  
            <div class="form-group">  
                <label>Date of Birth:</label>  
                <form:input path="dateOfBirth" type="date" />  
                <form:errors path="dateOfBirth" cssClass="error" />  
            </div>  

            <!-- Gender -->  
            <div class="form-group radio-group">  
                <label>Gender:</label>  
                <form:radiobutton path="gender" value="Male" /> Male  
                <form:radiobutton path="gender" value="Female" /> Female  
                <form:radiobutton path="gender" value="Other" /> Other  
                <form:errors path="gender" cssClass="error" />  
            </div>  

            <!-- NRC -->  
            <div class="form-group">  
                <label>NRC:</label>  
                <form:input path="NRC" placeholder="Enter your NRC" />  
                <form:errors path="NRC" cssClass="error" />  
            </div>  

            <!-- Meal Preferences -->  
            <div class="form-group checkbox-group">  
                <label>Meal Preferences:</label>  
                <form:checkbox path="food" value="Vegetarian" /> Vegetarian  
                <form:checkbox path="food" value="Non-Vegetarian" /> Non-Vegetarian  
                <form:checkbox path="food" value="Vegan" /> Vegan  
                <form:checkbox path="food" value="Gluten-Free" /> Gluten-Free  
            </div>  

            <!-- Leaving From -->  
            <div class="form-group">  
                <label>Leaving From:</label>  
               <form:select path="cityFrom">
    <form:option value="Mandalay" label="Mandalay"/>
    <form:option value="Yangon" label="Yangon"/>
    <form:option value="Naypyidaw" label="Naypyidaw"/>
    <form:option value="Mawlamyine" label="Mawlamyine"/>
    <form:option value="Pathein" label="Pathein"/>
    <form:option value="Taunggyi" label="Taunggyi"/>
    <form:option value="Sittwe" label="Sittwe"/>
    <form:option value="Bago" label="Bago"/>
    <form:option value="Myitkyina" label="Myitkyina"/>
    <form:option value="PyinOoLwin" label="Pyin Oo Lwin"/>
    <form:option value="Bagan" label="Bagan"/>
    <form:option value="Magway" label="Magway"/>
</form:select>


                    
             
            </div>  

            <!-- Going To -->  
            <div class="form-group">  
                <label>Going To:</label>  
               <form:select path="cityTo">
    <form:option value="Mandalay" label="Mandalay"/>
    <form:option value="Yangon" label="Yangon"/>
    <form:option value="Naypyidaw" label="Naypyidaw"/>
    <form:option value="Mawlamyine" label="Mawlamyine"/>
    <form:option value="Pathein" label="Pathein"/>
    <form:option value="Taunggyi" label="Taunggyi"/>
    <form:option value="Sittwe" label="Sittwe"/>
    <form:option value="Bago" label="Bago"/>
    <form:option value="Myitkyina" label="Myitkyina"/>
    <form:option value="PyinOoLwin" label="Pyin Oo Lwin"/>
    <form:option value="Bagan" label="Bagan"/>
    <form:option value="Magway" label="Magway"/>
</form:select>
 
            </div>  

            <!-- Age -->  
            <div class="form-group">  
                <label>Age:</label>  
                <form:input path="age" type="number" placeholder="Enter your age" />  
                <form:errors path="age" cssClass="error" />  
            </div>  

            <!-- Submit Button -->  
            <div class="form-group">  
                <input type="submit" value="Submit Reservation" />  
            </div>  
        </form:form>  
    </div>  
</body>  
</html>
