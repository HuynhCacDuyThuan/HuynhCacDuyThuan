<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="views/aces/css/base.css">
<link rel="stylesheet" href="views/aces/css/share.css">
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
			<div class="header__back">
				<a href="" class="header__back-link"> <i class="ti-back-left"></i>
					<span class="header__back-text">Back</span>
				</a>

			</div>


		</div>
		<div class="container">
			<form action="" method="post">
				<div class="card">
					<div class="card__header">Send video to your friends</div>
					<div class="card__body">
						<div class="form__group">
							<label for="email" class="group__label-email group__label">Your
								Friends' email:</label> <input type="text" id="email" name="email"
								class="group__input-email group__input"
								aria-describedby="emailHelperId" placeholder="email"> <small
								id="emailHelperId" class="group__small group__small-email">Email
								is required</small>
						</div>
					</div>
					<div class="card__footer">
						<button class="btn btn-sucess">Send</button>
					</div>
				</div>
			</form>


		</div>
	</div>

</body>
</html>