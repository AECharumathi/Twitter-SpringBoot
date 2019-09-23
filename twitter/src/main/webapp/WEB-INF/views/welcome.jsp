<%@ page language="java" contentType="text/html; charset=ISO-8859-1" prefix="spring" uri="http://www.springframework.org/tags"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Welcome to Twitter</title>
	<link rel="stylesheet" type="text/css" href="../css/welcome.css">
</head>
<body>
	<header><img src="Images/logo.png"></header>
	<section>
		<ul>
			<li>
				<img src="Images/interests.png" alt="interests.png"  align="middle">Follow your interests.
			</li>
			<li>
				<img src="Images/people.png" alt="people.png" align="middle">Hear what people are talking about.
			</li>	
			<li>
				<img src="Images/conversation.png" alt="conversation.png" align="middle">Join the conversation.
			</li>
		</ul>

		<h1>See what's happening in the world right now</h1>
		<h3>Join Twitter today.</h3>

		<button class="button" onclick="displaySignUp()">SIGN UP</button>
		<button class="button" onclick="displayLogin()">LOG IN</button>
	</section>
	<footer>
		<a href="#" class="footer">About Us</a> |
		<a href="#" class="footer">Help Center</a> |
		<a href="#" class="footer">Blog</a> |
		<a href="#" class="footer">Status</a> 
	</footer>
	<div id="sign_up" class="pop" style="display: none;">
		<div  class="pop-content">
			<h3 class="pop-heading">Sign up to Twitter</h3>
			<span class="close" onclick="closeDialog()"><img src="Images/close.png">
			</span>
			<div class="pop-body">
    			<div class="circle">
    				<img src="Images/profile.png" alt="ADD PHOTO">
        				<div class="text">ADD PHOTO</div>
    			</div>
				<form name="signupForm" onsubmit="return signUp(event)" method="post">
					<span id="signUPWarningMsg"></span>
					<input type="text" name="username" minlength="6" placeholder="User name" id="username" required>
					<input type="email" name="emailId" placeholder="Email Address" id="emailId" required>
					<input type="password" name="passwd" minlength="6" placeholder="Password" id="passwd" required>
					<input type="password" name="confirmpasswd" minlength="6" placeholder="Confirm Password" id="confirmpasswd" required>
					<br/>
					<input type="submit" class="btn_login" value="Signup"/>
				</form>
			</div>
		</div>
	</div>
	<div id="login" class="pop" style="display: none;">
		<div  class="pop-content">
			<h3 class="pop-heading">Log in to Twitter</h3>
			<span class="close" onclick="closeDialog()"><img src="Images/close.png"></span>
			<div class="pop-body">
				<form name="loginForm" onsubmit="return loginMsg(event,document.getElementById('loginEmail'),document.getElementById('loginPassword'))" method="post">
					<span id="loginWarningMsg"></span>
					<input type="email" name="email" placeholder="Email Address" id="loginEmail"/>
					<input type="password" name="password" placeholder="Password" id="loginPassword"/>
					<br/>
					<input type="submit" class="btn_login" value="Log in"/>
				</form>
				<div>
				<label>New to Twitter?<label><label class="login_footer" onclick="displaySignUp2()"> Sign up now >></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label>Fogot password?</label>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/welcome.js"></script>
	<script type="text/javascript">
		function displaySignUp(){
			document.getElementById("sign_up").style.display="block";
		}
		function displayLogin(){
			document.getElementById("login").style.display="block";
		}
		function closeDialog(){
			document.getElementById("sign_up").style.display="none";
			document.getElementById("login").style.display="none";
		}
		function displaySignUp2(){
			document.getElementById("login").style.display="none";
			document.getElementById("sign_up").style.display="block";
		}
	</script>
</body>
</html>