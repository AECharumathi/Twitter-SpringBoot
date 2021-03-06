<%@ page language="java" contentType="text/html; charset=ISO-8859-1" prefix="spring" uri="http://www.springframework.org/tags"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Edit Profile</title>
<link rel="stylesheet" type="text/css" href="../css/editProfile.css">
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
			</div>
		</div>
	</header>
	<div class=continer>
			<form name="editForm" onsubmit="editProfile(event)" method="POST">
				<div class=editProfile>
					<div id="warningMsg"></div>
					<div class="editItem">
						<span>Profile Image</span><div><input type="file" name="profile_pic" id="profile_pic" accept="image"/></div>
					</div>
					<div class="editItem">
						<span>Cover Image</span><div><input type="file" name="cover_pic" id="cover_pic" accept="image/*"></div>
					</div>
					<div class="editItem">
						<span>User name</span><div><input type="text" name="user_name" id="user_name"  minlength="6" placeholder="User name"></div>
					</div>
					<div class="editItem">
						<span>Full name</span><div><input type="text" name="full_name" id="full_name"  minlength="6" placeholder="Full name"></div>
					</div>
					<div class="editItem">
						<span>Email ID</span><div><input type="email" name="email" id="email" placeholder="Email Address" ></div>
					</div>
					<div class="editItem">
						<span>Password</span><div><input type="password" name="password" id="password" minlength="6" placeholder="Password" ></div>
					</div>
					<div  class="editItem">
						<span>Confirm Password</span><div><input type="password" name="confirm_password" id="confirm_password" minlength="6" placeholder="Re-enter Password" ></div>
					</div>
					<div class="editItem">
						<span>Gender</span><div>Male<input type="radio" name="gender" value="male" class="radio" id="gender" checked>
												Female<input type="radio" name="gender" value="female" class="radio" id="gender"></div>
					</div>
					<div class="editItem">
						<span>Website Owned</span><div><input type="text" name="url" id="url" placeholder="Website url"></div>
					</div>
					<div class="editItem">
						<span>Location</span><div><input type="text" name="location" id="location"  placeholder="Current Location"></div>
					</div>
					<div class="editItem">
						<span>Birthday</span><div><input type="Date" name="bday" id="bday" placeholder="dd/mm/yyyy"></div>
					</div>
					<div class="editbutton">
						<input type="submit" class="btn_login" value="Update"/>
						<input type="reset" class="btn_login" value="Cancel"/>
					</div>
				</div>
			</form>
</body>
<script type="text/javascript" src="js/editProfile.js"></script>
</html>