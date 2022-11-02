<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
<link rel="stylesheet" href="views/aces/css/base.css">
<link rel="stylesheet" href="views/aces/css/home.css">
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
								<li class="subnav__item1"><span>${mess}</span></li>
								<li class="subnav__item"><a href="" class="subnav__link">
										Registration </a></li>
								<li class="subnav__item"><a
									href=" SelvletLogin?action=Logout" class="subnav__link">
										Logoff </a></li>
								<li class="subnav__item"><a href="changepassword.jsp"
									class="subnav__link"> Change Password </a></li>
								<li class="subnav__item"><a href="" class="subnav__link">
										Edit Profile </a></li>
							</ul>
						</div></li>
				</ul>
			</div>
		</div>
		<div class="content">
			<div class="content__list">
				<div class="content__item">
					<div class="content__item-data">
						<div class="content__item-image">
							<img src="views/aces/img/hinh-video.png" alt="">
						</div>
						<h3 class="content__item-text">Video Title</h3>
						<div class="content__btn">
							<button class="btn btn__like">Like</button>
							<button class="btn btn__share">Share</button>
						</div>
					</div>
				</div>
				<div class="content__item">
					<div class="content__item-data">
						<div class="content__item-image">
							<img src="views/aces/img/hinh-video.png" alt="">
						</div>
						<h3 class="content__item-text">Video Title</h3>
						<div class="content__btn">
							<button type="submit" class="btn btn__like">Like</button>
							<button type="submit" class="btn btn__share">
								<a href="share.jsp" class="subnav__link">Share</a>
							</button>
						</div>
					</div>
				</div>
				<div class="content__item">
					<div class="content__item-data">
						<div class="content__item-image">
							<img src="views/aces/img/hinh-video.png" alt="">
						</div>
						<h3 class="content__item-text">Video Title</h3>
						<div class="content__btn">
							<button class="btn btn__like">Like</button>
							<button class="btn btn__share">Share</button>
						</div>
					</div>
				</div>
				<div class="content__item">
					<div class="content__item-data">
						<div class="content__item-image">
							<img src="views/aces/img/hinh-video.png" alt="">
						</div>
						<h3 class="content__item-text">Video Title</h3>
						<div class="content__btn">
							<button class="btn btn__like">Like</button>
							<button class="btn btn__share">Share</button>
						</div>
					</div>
				</div>
				<div class="content__index">
					<span class="content__index-item"> <i
						class="ti-angle-double-left"></i>
					</span> <span class="content__index-item"> 1 </span> <span
						class="content__index-item"> 2 </span> <span
						class="content__index-item"> <i
						class="ti-angle-double-right"></i>
					</span>

				</div>
			</div>
			<div class="content__menu">
				<ul class="content__menu-list">
					<li class="content__menu-item content__menu-item--color"><i
						class="ti-thumb-up"></i> <span>Favorite</span></li>
					<li class="content__menu-item">Laptop</li>
					<li class="content__menu-item">Computer</li>
					<li class="content__menu-item">Laptop</li>
					<li class="content__menu-item">Laptop</li>
					<li class="content__menu-item">Laptop</li>
				</ul>
			</div>
		</div>
		<div class="footer"></div>
	</div>
</body>
</html>