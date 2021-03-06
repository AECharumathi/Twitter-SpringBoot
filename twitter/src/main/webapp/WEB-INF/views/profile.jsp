<%@ page language="java" contentType="text/html; charset=ISO-8859-1" prefix="spring" uri="http://www.springframework.org/tags"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Twitter Profile Page</title>
	<link rel="stylesheet" type="text/css" href="../css/profile.css">
</head>
<body>
	<header>
		<div class="header">
			<div class="header-header">
				<img src="Images/home_logo.png" alt="Home" class="header-img" onclick="location.href = 'home.jsp'">
				<span>Home</span> 
				<img src="Images/tweet-bird.png" alt="Tweet bird" class="header-img"> 
				<div>
					<img src="Images/avatar.png" alt="avatar" class="header-img" onclick="location.href = 'profile.jsp'">
					<button class="header-logout button" onclick="location.href = 'welcome.jsp'">Logout</button>
				</div>
			</div>
			<div class="header-body">
			</div>
			<div class="header-footer"> 
				<div>
					<img src="Images/user-avatar.png">
				</div>
				<div  class="header-footer-body">
					<span onclick="displayTweets()"><a class="text-property" id="Tweets">Tweets</a><h3 id="value1"></h3></span>
					<span onclick="displayFollowing()"><a class="text-property" id="Following">Following</a><h3  id="value2"></h3></span>
					<span onclick="displayFollowers()"><a class="text-property" id="Followers">Followers</a><h3 id="value3"></h3></span>
				</div>
				<div>
					<button class="header-logout button text-property" onclick="location.href = 'editProfile.jsp'">Edit Profile</button>
				</div>
			</div>
		</div>
	</header>
	<div class="container">
		<aside>
			<div class="side-container">
				<div  class="text-property user_detail" >
						<div class="user_name">
							<h2>Username</h2>
							<span>@ Login Userid</span>
						</div>
						<div>
							<img src="Images/location.png"><span></span>
						</div>
						<div>
							<img src="Images/web.png"><span></span>
						</div>
						<div>
							<img src="Images/date.png"><span></span>
						</div>
						<div>
							<img src="Images/birthday.png"><span></span>
						</div>
				</div>
			</div>
			<div  class="side-container-common side-container1">
				<div class="side-container1-header">
					<h2>Photos & Videos</h2>
				</div>
				<div class="side-container1-body"></div>
			</div>
			<div class="side-container-common side-container2">
				<div class="side-container2-header">
					<span>Who to follow</span>
					<span><a href="#" class="text-property">.Refresh</a></span>
					<span><a href="#"  class="text-property">.View all</a></span>
				</div>
				<div class="side-container2-b"></div>
				<div class="side-container2-footer">
					<span class="text-property">Find people you know</span>
				</div>
			</div>
			<div  class="side-container-common side-container3">
			<span  class="text-property"><p>@2019 Twitter_About_Help Center Terms_Privacy Policy_cookies_Ads info_Brand_Blog_Status_Apps_Jobs Marketing_Business_Developers</p></span>
			</div>
		</aside>
		<div class="main" id="Tweet-container" style="display:block;">
			<div class="main-container main-container1">
					<img src="Images/avatar.png" class="avatar">
					<input type="text" placeholder="What's happening?" class="search-bar">
					<img src="Images/image-logo.png">
			</div>
			<div class="main-container main-container-tweet">	
			</div>
		</div>
		<div id="Following-container" style="display: none;">
			<div>
				<input type="text" placeholder="Search" class="search-bar">
			</div>
			<div class="Following-container-body">
			</div>
		</div>
		<div id="Followers-container" style="display: none;">
			<div>
				<input type="text" placeholder="Search" class="search-bar">
			</div>
			<div class="Followers-container-body">
			</div>
		</div>
		<script type="text/javascript" src="js/profilePage.js"></script>
		<script type="text/javascript">
		function displayTweets(){
			document.getElementById("Following-container").style.display="none";
			document.getElementById("Tweet-container").style.display="block";
			document.getElementById("Followers-container").style.display="none";
			document.getElementById("Tweets").style.color= "#1da1f2";
			document.getElementById("value1").style.color="#1da1f2";
			document.getElementById("Following").style.color="#7a797a";
			document.getElementById("value2").style.color="#7a797a";
			document.getElementById("Followers").style.color="#7a797a";
			document.getElementById("value3").style.color="#7a797a";
		}
		function displayFollowing(){
			document.getElementById("Tweet-container").style.display="none";
			document.getElementById("Following-container").style.display="block";
			document.getElementById("Followers-container").style.display="none";
			document.getElementById("Following").style.color= "#1da1f2";
			document.getElementById("value2").style.color="#1da1f2";
			document.getElementById("Tweets").style.color="#7a797a";
			document.getElementById("value1").style.color="#7a797a";
			document.getElementById("Followers").style.color="#7a797a";
			document.getElementById("value3").style.color="#7a797a";
		}
		function displayFollowers(){
			document.getElementById("Tweet-container").style.display="none";
			document.getElementById("Following-container").style.display="none";
			document.getElementById("Followers-container").style.display="block";
			document.getElementById("Followers").style.color= "#1da1f2";
			document.getElementById("value3").style.color="#1da1f2";
			document.getElementById("Tweets").style.color="#7a797a";
			document.getElementById("value1").style.color="#7a797a";
			document.getElementById("Following").style.color="#7a797a";
			document.getElementById("value2").style.color="#7a797a";
		}
	</script>
</body>
</html>