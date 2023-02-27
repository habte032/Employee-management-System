<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login/Signup</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
  .content .cn{
    width: 160px;
    height: 40px;
    background: #ff7200;
    border: none;
    margin-top: 1px;
    margin-left: 45%;
    font-size: 18px;
    border-radius: 10px;
    cursor: pointer;
    transition: .4s ease;
    align: center;
    
}

.content .cn a{
    text-decoration: none;
    color: #000;
    transition: .3s ease;
}

.cn:hover{
    background-color: #fff;
}

.content span{
    color: #ff7200;
    font-size: 65px
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
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<caption>
					<h2>LogIn / Sign Up </h2>
				</caption>


				<form action="Login" method="post">
					<label>Enter Username:</label> <input type="text"
						class="form-control" name="uname"><br> <br> <label>Enter
						Password:</label> <input type="password" class="form-control" name="pass"><br>
					<input type="submit" class='btn btn-primary' value="Log In">
					<a href="<%=request.getContextPath()%>/signup.jsp" class="btn btn-success">Create </a>

				</form>
				
				





			</div>
		</div>
	</div>
</body>
</html>