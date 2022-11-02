<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot PassWord</title>
<link rel="stylesheet" href="views/aces/css/base.css">
<link rel="stylesheet" href="views/aces/css/login.css">
<link rel="stylesheet"
	href="views/aces/font/themify-icons/themify-icons.css">
</head>
<body>
	<div class="main">
		<div class="header">
			<div class="header__section">
				<h1 class="header__heading">Online Entertainment</h1>
				<div class="header__logo">
					<h1 class="header__logo-text">MiTi</h1>
				</div>
			</div>

			<div class="nav">
				<h3 class="nav__heading">OnEn</h3>
				<ul class="nav__list">
					<li class="nav__item"><a href="" class="nav__link"> <i
							class="ti-home nav__item-icon"></i> <span class="nav__item-text">Home</span>
					</a></li>
					<li class="nav__item"><a href="" class="nav__link"> <!-- <i class="ti-user nav__item-icon"></i> -->
							<span class="nav__item-text">About Us</span>
					</a></li>
					<li class="nav__item"><a href="" class="nav__link"> <i
							class="ti-mobile nav__item-icon"></i> <span
							class="nav__item-text">Contact Us</span>
					</a></li>
					<li class="nav__item"><a href="" class="nav__link"> <i
							class="ti-themify-favicon nav__item-icon"></i> <span
							class="nav__item-text">My Favorite</span>
					</a></li>
					<li class="nav__item"><a href="" class="nav__link"> <i
							class="ti-user nav__item-icon"></i> <span class="nav__item-text">My
								Account</span> <i class="ti-angle-down nav__icon-down"></i>
					</a>

						<div class="subnav">
							<ul class="subnav__list">
								<li class="subnav__item"><a href="login.jsp"
									class="subnav__link"> Login </a></li>
								<li class="subnav__item"><a href="" class="subnav__link">
										Registration </a></li>
								<li class="subnav__item"><a href="" class="subnav__link">
										Edit Profile </a></li>
							</ul>
						</div></li>
				</ul>
			</div>
		</div>
		<div class="container">
			<form action="ForgetPassWord" method="post" class="login">
				<div class="card">
					<div class="card__header">
						<h1 class="card__haeder-text">Forgot Password</h1>

					</div>
					<div class="card__body">
						<div class="form__group">
							<label for="username" class="form__group-label lable__username">Username</label>
							<input type="text" class="form__group-input input-name"
								name="username" id="username" aria-describedby="usernameId"
								placeholder="Name"> <small
								class="form__group-small small-name" id="usernameId">Username
								is required</small>
						</div>
						<div class="form__group">
							<label for="email" class="form__group-label lable__password">Email</label>
							<input type="email" class="form__group-input input-email"
								name="email" id="email" aria-describedby="emailId"
								placeholder="email"> <br>
						</div>

					</div>
					<div class="card-footer text-muted">
						<button type="submit" class="btn btn-success">Retrieve</button>
					</div>
				</div>

			</form>
		</div>
	</div>
</body>
</html>