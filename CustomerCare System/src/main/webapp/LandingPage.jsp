<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing Page</title>
    <style>

         body {
            background-color: #c0d0e0;
        }
        .navbar {
            list-style-type: none;
            display: flex;
            justify-content: flex-end; 
            align-items: center;
            margin-right: 30px;
            margin-left: 10px;
        }

        .navbar li {
            margin-left: 5px; 

        }

        .navbar a {
            text-decoration: none;
            color: #334b6b;
            padding: 15px;
            font-size: 25px;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }

        .navbar a:hover {
            color: #000000;
            background-color:white;
            padding: 15px;
            border-radius: 10px;
        }

        
        .logo {
            width: 300px; 
            float: left;
            margin-left: 0;
            margin-right: 500px;
            margin-top:0;
        }

        header {

            margin-top: 30px;
        }

        .agentImage{
            width: 40%;
            float: right;
        }

        .welcome{
            text-align: justify;
            margin-left: 40px;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color: white;
            width: 55%;
            padding:20px 20px 20px 40px;
            border-radius: 15px;
            margin-top: 5%;
        }

        .welcome h1{
            font-size: 50px;
            color: #3e73b8;
        }

        .welcome h3{
            font-size: 30px;
            color: #334b6b;
        }

        .welcome h4{
            font-size: 25px;
            color: rgb(73, 108, 140);
        }

        .services-section {
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding: 40px 0;
            background-color: #ffffff;
            width: 100%;
            border-radius: 10px;
        }

        .service {
            text-align: center;
            width: 20%;
        }

        .service img {
            width: 120px;
            height: 120px;
            margin-bottom: 20px;
            margin-top: 20px;
        }

        .service h3 {
           font-size: 23px;
           font-weight: bold;
           color: rgb(73, 108, 140);
           font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
           height: 35px;
        }

        @media (max-width: 768px) {
         .services-section {
          flex-direction: column;
          padding: 20px 0;
        }
    
        .service {
          margin-bottom: 20px;
          width: 70%;
        }
       }

       .support-button {
         display: inline-block;
         padding: 12px 24px;
         background-color: #00aaff;  
         color: white;  
         font-size: 20px;
         font-weight: bold;
         text-align: center;
         text-decoration: none;
         border-radius: 8px;  
         transition: background-color 0.3s ease;
         font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
         border: none;
        }

      .support-button:hover {
        background-color: #008fcc;  
        box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);  
        }

     .about-us {
        padding: 50px;
        background-color: #a3b1c0;
        margin-top: 10px;
        border-radius: 10px;
      } 

    .about-us-container {
       display: flex;
       flex-wrap: wrap;
       align-items: center;
      }

     .about-us-image {
       flex: 1;
       max-width: 50%;
      }

    .about-us-image img {
       width: 100%;
       height: auto;
       border-radius: 10px;
       margin-left: 0;
     }

    .about-us-text {
      flex: 1;
      max-width: 65%;
      padding: 30px;
      background-color: #ffffff;
      border-radius: 15px;
    }

    .about-us-text h2 {
      font-size: 2.5rem;
      margin-bottom: 20px;
      color: #333;
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }

    .about-us-text p {
      font-size: 1.1rem;
      line-height: 1.6;
      margin-bottom: 15px;
      color: #555;
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }

   @media (max-width: 768px) {
    .about-us-container {
        flex-direction: column;
    }

    .about-us-image, .about-us-text {
        max-width: 100%;
        padding: 0;
    }

    .about-us-text {
        padding-top: 20px;
    }
   }


    .footer {
      background-color: #333;
      color: #fff;
      padding: 20px 0;
      font-family: Arial, sans-serif;
      margin-top: 10px;
     }

    .footer-container {
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      padding: 0 20px;
     }

    .footer-section {
      flex: 1;
      margin: 0 20px;
      min-width: 200px;
     }

   .footer-section h3 {
      font-size: 1.5rem;
      margin-bottom: 15px;
    }

   .footer-section p, .footer-section ul {
      font-size: 1rem;
      line-height: 1.5;
    }

   .footer-section a {
      color: #fff;
      text-decoration: none;
    }

   .footer-section a:hover {
      text-decoration: underline;
    }

    .social-media {
      display: flex;
      gap: 10px;
    }

   .social-icon img {
      width: 24px;
      height: 24px;
      display: block;
    }

   .footer-bottom {
      text-align: center;
      padding: 10px 20px;
      background-color: #222;
    }

   .footer-bottom p {
      margin: 0;
      font-size: 0.9rem;
    }
    </style>
</head>

<body>
    
    <header>
        
        <nav>
            
            <ul class="navbar">
                <li>
                    <img src="images/carenet-logo.png" alt="logo" class="logo">
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="LandingPage.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">FAQ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Feedback</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Register.jsp">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Login.jsp">Login</a>
                </li>
            </ul>
        </nav>
        
    </header>
   <img src="images/agentAnimation.png" alt="agentImage" class="agentImage">

   <div class="welcome">
    <h1>Welcome to CareNet ! </h1>
    <h3>Effortless support, Anytime</h3>
    <h4>Get the help you need quickly and easily with CareNet.<br> Our intuitive platform connects you to expert support, <br>ensuring your issues are resolved efficiently and effectively.</h4>
    <a href="Login.jsp" class="support-button">GET SUPPORT</a>

    </div>

   <div class="services-section">
    <div class="service">
        <img src="images/247.png" alt="Service 1 Icon">
        <h3>24/7 Support <br>System</h3>
    </div>
    <div class="service">
        <img src="images/agent.png" alt="Service 2 Icon">
        <h3>Dedicated <br>Expert Agents</h3>
    </div>
    <div class="service">
        <img src="images/ticket.png" alt="Service 4 Icon">
        <h3>Ticket Management<br>System</h3>
    </div>
    <div class="service">
        <img src="images/book.png" alt="Service 3 Icon">
        <h3>Self-Service<br>Knowledge Base</h3>
    </div>
    
</div>

<section class="about-us">
    <div class="about-us-container">
        <div class="about-us-image">
            <img src="images/ladyagent.png" alt="About Us Image">
        </div>
        <div class="about-us-text">
            <h2>About Us</h2>
            <p>At CareNet, we believe that customer support should be simple, accessible, and effective. With our innovative platform, we are dedicated to bridging the gap between customers and expert agents, delivering real solutions with minimal effort. Whether you need assistance with a product, service, or just have a question, CareNet is here to provide personalized, reliable support 24/7.</p>
            <p>Our mission is to redefine the way customer care works by focusing on efficiency, empathy, and expertise. We aim to empower both customers and businesses by creating seamless interactions that lead to faster resolutions and higher satisfaction.</p>
            <p>CareNet isn't just about support — it's about making sure you always feel heard and valued.</p>
        </div>
    </div>
</section>

<footer class="footer">
    <div class="footer-container">
        <div class="footer-section">
            <h3>Contact Us</h3>
            <p>Email: support@carenet.com</p>
            <p>Phone: +1 234 567 890</p>
            <p>Address: 345 Street, Suite 100, Kandy, Sri Lanka</p>
        </div>
        <div class="footer-section">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
        <div class="footer-section">
            <h3>Follow Us</h3>
            <div class="social-media">
                <a href="#" class="social-icon"><img src="images/facebook.png" alt="Facebook"></a>
                <a href="#" class="social-icon"><img src="images/twitter.png" alt="Twitter"></a>
                <a href="#" class="social-icon"><img src="images/instagram.png" alt="Instagram"></a>
                <a href="#" class="social-icon"><img src="images/linkedin.png" alt="LinkedIn"></a>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2024 CareNet. All Rights Reserved.</p>
    </div>
</footer>


</body>
</html>
