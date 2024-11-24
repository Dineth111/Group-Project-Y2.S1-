<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Customer Dashboard</title>
  <style>
    body {
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #c0d0e0;
    }

    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 10px;
    }

    .logo {
      width: 15%;
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
      background-color: white;
      border-radius: 10px;
    }

    main {
      display: grid;
      grid-template-columns: auto auto;
      grid-gap: 10px;
      margin-top: 50px;
      text-align: center;
    }

    main h2 {
      color: #3e73b8;
      font-size: 30px;
    }

    main p {
      color: #334b6b;
    }

    .ticket-section,
    .faq-section,
    .feedback-section {
      width: 60%;
      padding: 20px;
      border: 1px solid #ccc;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      background-color: white;
      border-radius: 15px;
    }

    #ticket-section1 {
      margin-left: 200px;
    }

    #ticket-section2 {
      margin-right: 300px;
    }

    .faq-section {
      margin-left: 200px;
      margin-top: 20px;
    }

    .feedback-section {
      margin-right: 300px;
      margin-top: 20px;
    }

    button {
      padding: 10px 20px;
      background-color: #008fcc;
      color: white;
      border: none;
      cursor: pointer;
      border-radius: 5px;
      width: 40%;
      font-size: 17px;
      margin-top: 10px;
      font-weight: bold;
    }

    button:hover {
      background-color: #0067d6;
    }

    .faq-section button {
      margin-top: 10px;
    }

    .image {
      width: 40%;
      float: right;
      margin-top: 20px;
      margin-left: 200px;
    }

    .discription {
      margin-top: 100px;
      margin-left: 200px;
      background: #eeeeee;
      width: 80%;
      padding: 20px;
      height: fit-content;
      border-radius: 15px;
      color: white;
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

    .footer-section p,
    .footer-section ul {
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
    <img src="images/carenet-logo.png" alt="logo" class="logo">
    <nav>
      <ul class="navbar">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="customerDashboard.jsp">Home</a>
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
          <a class="nav-link" href="CustomerDetails.jsp">Profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Login.jsp">Logout</a>
        </li>
      </ul>
    </nav>
  </header>

  <main>
    <section class="ticket-section" id="ticket-section1">
      <h2>Create a new ticket</h2>
      <p>Once submitted, the support team will review and respond to the ticket to provide help or resolve the problem.</p>
      <form action="CreateTicket.jsp" method="GET">
        <button type="submit">Create</button>
      </form>
    </section>

    <section class="ticket-section" id="ticket-section2">
      <h2>Active tickets</h2>
      <p>View the status of your current support requests, allowing you to track progress and updates from the support team.</p>
      <button>View</button>
    </section>

    <section class="faq-section">
      <h2>FAQ</h2>
      <p>Check out our frequently asked questions for quick help.</p>
      <button>View FAQs</button>
    </section>

    <section class="feedback-section">
      <h2>We'd love some feedback</h2>
      <p>Share your thoughts and experiences regarding the support received.</p>
      <button>Rate us</button>
    </section>

    <section class="discription">
      <p>Welcome to the CareNet Support Dashboard, your one-stop solution for managing customer support requests and accessing essential resources. This user-friendly platform empowers you to create new support tickets, track the status of your active requests, and explore our frequently asked questions for quick assistance. Whether you need immediate help or want to provide feedback on your experience, the CareNet Support Dashboard is designed to ensure you receive the support you need with ease and efficiency.</p>
    </section>

    <img src="images/dashboard-img.png" alt="Feedback" class="image"> 
  </main>

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
