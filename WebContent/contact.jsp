<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<title>Calorie King | Contact</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/ie7.css" type="text/css" charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
</head>
<body>
<div id="header">
  <div id="navigation">
    <div>
      <ul>
        <li><a href="index.html"><span>Home</span></a></li>
        <li><a href="calculator.html"><span>Calculator</span></a></li>
        <li><a href="food_database.jsp"><span>Food database</span></a></li>
        <li class="active"><a href="contact.html"><span>Contact us</span></a></li>
      </ul>
    </div>
  </div>
  <div id="logo"> <a href="index.html"><img src="images/logo.png" alt="" height="40px"></a> </div>
</div>
<div id="body" style= "opacity: 1;">
  <div id="contents">
    <div id="sidebar">
      <div id="connect">
        <h1>Follow us</h1>
        <ul>
          <li><a href="http://www.facebook.com" class="facebook">Facebook</a></li>
          <li><a href="http://yahoo.com" class="email">Subscribe</a></li>
          <li><a href="http://twitter.com" class="twitter">Twitter</a></li>
          <li><a href="http://flicker.com" class="flicker">Flicker</a></li>
        </ul>
      </div>
    </div>
    <div id="contacts">
      <h2>Contact us</h2>
      <p style="font-family: Tahoma;font-size: 18px;">Please send us an email !! </p>
        <p style="font-size:20px;font-family:Tahoma;color:black;"><b> <% out.print((String) session.getAttribute("result"));%> </b></p>

      <form action="MailServlet" method="post">
        <label>Name</label>
        <input id="name" name="name" type="text">
        <label>E-mail </label>
        <input id="email" name="email" type="text">
        <textarea id="message" name="message"></textarea>
        <input id="submit" type="submit" value="" class="button">
      </form>

  

    </div>
  </div>
</div>
<div id="footer">
  <div>
    <ul>
      <li> <img src="images/medicine.png" alt="">
        <h4>The best option</h4>
        <p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta.</p>
      </li>
      <li> <img src="images/exercise.png" alt="" height="155px" width="120px">
        <h4>Program exercises</h4>
        <p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta.</p>
      </li>
      <li> <img src="images/fruits.png" alt="">
        <h4>Why fruits?</h4>
        <p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta.</p>
      </li>
      <li> <img src="images/orange.png" alt="">
        <h4>Healthy eating</h4>
        <p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta.</p>
      </li>
    </ul>

  </div>
  <p class="footnote">Copyright &copy; 2016 <a href="#">Calorie King</a> All rights reserved | Design By: Rolland Schnell</p>
</div>

<script src="js/email.js" type="text/javascript"></script>

</body>
</html>