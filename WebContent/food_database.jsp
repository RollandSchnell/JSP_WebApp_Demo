<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<title>Calorie King | Food_database</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/ie7.css" type="text/css" charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
</head>
<body>
<div id="header" style="margin-bottom: 0px">
  <div id="navigation">
    <div>
      <ul>
        <li><a href="index.html"><span>Home</span></a></li>
        <li><a href="calculator.html"><span>Calculator</span></a></li>
        <li class="active"><a href="food_database.jsp"><span>Food database</span></a></li>
        <li><a href="contact.html"><span>Contact us</span></a></li>
      </ul>
    </div>
  </div>
  <div id="logo"> <a href="index.html"><img src="images/logo.png" alt="" height="40px"></a> </div>
</div>
<div id="body">
  <div id="contents">

      <div class="body" style="border-radius:25px;">
         <span style="font-size:20px;font-family: Tahoma">Search for a food:</span>
           <input id="searchField" type="text">
           <input id="searchButton" type="button" class="myButton" value="Search">

          <div id="tableDiv">

      <table border="1" width="100%">
        <tr>
          <td>
            <table border="1" width="100%">
              <tr>
                <th>Food</th>
                <th>Calorie</th>
                <th>Protein</th>
                <th>Carbs</th>
                <th>Fat</th>
              </tr>
              <tr>
                <td id="foodName"></td>
                <td id="foodCalorie"></td>
                <td id="foodProtein"></td>
                <td id="foodCarbs"></td>
                <td id="foodFat"></td>
              </tr>

            </table>
          </td>
        </tr>
      </table>
      <br>
      <br>
     <p id="error" style="font-weight:bold;font-size:16px;color:red;'"></p>
     
     </div>
</div>
  </div>
</div>
<div id="footer">
  <div>
    <ul>
      <li> <img src="images/medicine.png" alt="">
        <h4>The best option</h4>
        <p>We’re always hearing how a certain vitamin or herbal supplement will cure a chronic
         condition or drastically improve the quality of our lives. However, information about dietary 
         supplements is often confusing or unclear. It’s hard to know which offer genuine health benefits 
         and which are merely giving false promises, or worse, running the risk of actually damaging your health.
          </p>
      </li>
      <li> <img src="images/exercise.png" alt="" height="155px" width="120px">
        <h4>Program exercises</h4>
        <p>Starting a fitness journey can be intimidating, especially if you're going in without any previous study.
         If you go to the Internet to find information, you might find yourself smack-dab in the middle of bad logic and bad ideas. 
         It's difficult to sort out the fact from the fiction—especially when the fiction sounds so good..</p>
      </li>
      <li> <img src="images/fruits.png" alt="">
        <h4>Why fruits?</h4>
        <p>There's no doubt that eating fruit is important to our overall health and wellbeing.
         Fruit is healthy for you, we all know that, but, it's good to know that eating it should follow some general guidelines 
         to fully benefit our health. It's just not as simple as putting it into our mouths whenever we feel like it. 
         </p>
      </li>
      <li> <img src="images/orange.png" alt="">
        <h4>Healthy eating</h4>
        <p>Here are three main reasons that will help remind you that eating healthy is the best choice to make for your diet:
         To provide the necessary nutrients that your body needs to create new cells, clean toxins, and to just function every day!
          Eating healthy now can help prevent future diseases such as diabetes and cancer.</p>>
      </li>
    </ul>
  </div>
  <p class="footnote">Copyright &copy; 2016 <a href="#">Calorie King</a> All rights reserved | Design By: Rolland Schnell</p>
</div>

<script src="js/database.js" type="text/javascript"></script>
</body>
</html>