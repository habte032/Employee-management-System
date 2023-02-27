<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us</title>
<style type="text/css">
body {
font-family: Arial, sans-serif;
margin: 0;
padding: 0;
}

header {
background-color: lightgray;
padding: 10px;
display: flex;
justify-content: space-between;
align-items: center;
  background-color: rgb(4, 34, 50);
}

header h1 {
margin: 0;
color:#ff720
}

header nav {
display: inline-block;
}

header nav ul {
list-style: none;
margin: 0;
padding: 0;
display: inline-block;
}

header nav ul li {
display: inline-block;
margin-right: 10px;
}
header nav ul li a {
    text-decoration: none;
    color: #fff;
    font-family: Arial;
    font-weight: bold;
    transition: 0.4s ease-in-out;
}
header ul li a:hover{
    color: #ff7200;
    transition: all 2s ease;

}
header ul li a:active{
    color: #ff7200;

}

.logo {
height: 50px;
margin-right: 10px;
}

main {
padding: 10px;
text-align: center;
}

footer {
background-color: lightgray;
padding: 10px;
text-align: center;
position: absolute;
bottom: 0;
width: 100%;
}
.icon{
    margin-left: 20px;
    width: 65px;
    background-repeat: no-repeat;
    float: left;
    height: 65px;
    background: linear-gradient(to top, rgba(0,0,0,0),rgba(0,0,0,0)), url('15.jpg');
  }
  
  .logo{
    color: #ff7200;
    font-size: 50px;
    font-family: Arial;
    padding-left: 0px;
    padding-bottom: 20px;
    float: left;
    padding-top: px;
    margin-top: 5px;
    position: absolute;
    left: 10px;
    font-weight: bolder;
    margin-left: 100px;
    margin-top: 2px;
  }
main {
padding: 50px;
text-align: center;
background-color: #f2f2f2;
box-shadow: 10px 10px 5px #888888;
border-radius: 25px;
margin: 50px auto;
max-width: 800px;
}

h2 {
margin-bottom: 50px;
font-size: 36px;
font-weight: bold;
}

p {
font-size: 18px;
line-height: 1.5;
}

ul {
font-size: 18px;
line-height: 1.5;
padding-left: 50px;
}

li {
margin-bottom: 20px;
}
</style>
</head>
<body>

<header>
  <div class="icon">
           <a href="index.jsp"><h2 class="logo">DBU</h2> </a>
         </div>
<h1>Employee Management System</h1>
<nav>
<ul>
<li><a href="home.jsp">Home</a></li>
<li><a href="about.jsp">About Us</a></li>
<li><a href="contact.jsp">Contact Us</a></li>
<c:if test="${empty user}">
<li><a href="index.jsp">Login</a></li>
</c:if>
<c:if test="${not empty user}">
<li><a href="signup.jsp">Sign Up</a></li>
</c:if>
</ul>
</nav>

</header>

<main class="mainn">
<h2>About Us</h2>
<p>We are a team of software developers dedicated to providing the best employee management system on the market. Our mission is to help companies manage their employees efficiently and effectively. Our system is designed to streamline HR processes and reduce administrative tasks, allowing HR professionals to focus on what really matters - their employees.</p>
<p>Our system includes features such as:</p>
<ul>
<li>Employee database management</li>
<li>Performance tracking</li>
<li>Payroll management</li>
<li>Benefits administration</li>
</ul>
<p>We are committed to delivering the highest quality software and providing excellent customer support. If you have any questions or need assistanc
, please don't hesitate to contact us.</p>
</main>
</body>
</html>