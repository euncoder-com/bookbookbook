<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="../img/pages/icon.png" type="image/png">
	<title>북북북 | 로그인</title>
	<!-- Bootstrap Css -->
	<link rel="stylesheet" href="../vender/bootstrap/css/bootstrap.min.css">
	<!-- Icofont Css -->
	<link rel="stylesheet" href="../vender/icofont/icofont.min.css">
	<!-- AOS Css -->
	<link rel="stylesheet" href="../vender/aos/dist/aos.css">
	<!-- Remix Icons -->
	<link rel="stylesheet" href="../vender/remixicon/remixicon.css">
	<!-- Custom Css -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/style2.css">
	<!-- Common Css -->
	<link rel="stylesheet" href="../css/common.css">

	<style>
		@font-face {
			font-family: 'DungGeunMo';
			src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff') format('woff');
			font-weight: normal;
			font-style: normal;
		}
		body{
			font:  'DungGeunMo';
		}

		.first-form {
			display: flex;
			flex-direction: column;
			justify-content: center;
			min-height: 100vh;
		}
		.row {
			width: 100%;
		}
		@media (min-width: 1400px) {
			.container-xxl, .container-xl, .container-lg, .container-md, .container-sm, .container {
				max-width: 1600px;
			}
		}
	</style>
</head>
<body>


<div class="overflow-hidden vh-100 d-flex align-items-center flex-column">

	<div class="container row align-items-center ">
		<div class="col-lg-6 col-12 p-5 mx-auto bg-white">
			<div class="loginFrame">
				<div class="d-flex align-items-center justify-content-between w-100 mb-5">
					<div class="position-relative d-flex align-items-center gap-2 site-brand text-center w-100">
						<div class="logo">
							<img src="../img/bookbookbookLogo.png" alt="BOOKBOOKBOOK Logo" href="/">
						</div>
						<a class="stretched-link" href="${pageContext.request.contextPath}/"></a>
					</div>
				</div>
				<div class="m-auto w-100">

					<form id="loginForm" class="d-grid gap-2 input-group-lg">
						<div class="mb-3">
							<label for="userId" class="form-label small ">이메일 입력</label>
							<input type="text" name="userId" class="form-control border-0 px-3 py-2" placeholder="아이디 입력" id="userId">
						</div>
						<div class="mb-3">
							<label for="password" class="form-label small">비밀번호 입력</label>
							<input type="password" name="password" class="form-control border-0 px-3 py-2" placeholder="비밀번호 입력" id="password">
						</div>
						<!-- 기타 form 요소들 -->
						<button type="submit" class="btn btn-purple btn-theme">로그인</button>
					</form>

					<!-- 아이디 찾기, 비밀번호 찾기 링크 추가 -->
					<div class="d-flex justify-content-center mt-3 mb-4">
						<a href="${pageContext.request.contextPath}/pages/find-email" class="text-muted small me-3">아이디 찾기</a>
						<span class="text-muted small">|</span>
						<a href="${pageContext.request.contextPath}/pages/find-password" class="text-muted small ms-3">비밀번호 찾기</a>
					</div>

					<div class="d-flex align-items-center justify-content-between my-3 opacity-50">
						<hr class="w-100">
						<span class="text-muted small px-4">Or</span>
						<hr class="w-100">
					</div>

					<div class="d-grid d-md-flex justify-content-center gap-3 align-items-center">
						<a href="javascript:kakaoLogin();" class="kakao-button">
							<img src="https://developers.kakao.com/tool/resource/static/img/button/login/full/ko/kakao_login_medium_narrow.png" alt="카카오 로그인 버튼">
						</a>
						<div class="naver-login-container">
							<div id="naver_id_login" class="loginButton"></div>
						</div>
					</div>



					<div class="d-flex align-items-center justify-content-center mt-3">
						<p class="mb-0 me-2">아직 회원이 아니신가요?</p>
						<a href="/pages/user-signup" class="text-decoration-none">회원가입</a>
					</div>


				</div>
			</div>
		</div>
	</div>
</div>


<style>
	.footer-container{
		background-color: #e74c3c;
	}

	@font-face {
		font-family: 'DungGeunMo';
		src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff') format('woff');
		font-weight: normal;
		font-style: normal;
	}

	footer{
		font-family: 'DungGeunMo';
	}


</style>

<style>
	.first-form {
		display: flex;
		flex-direction: column;
		justify-content: center;
		min-height: 100vh;
	}
	.row {
		width: 100%;
	}
	@media (min-width: 1400px) {
		.container-xxl, .container-xl, .container-lg, .container-md, .container-sm, .container {
			max-width: 1600px;
		}
	}
	.naver-login-container {
		margin-left: 10px; /* 네이버 로그인 버튼과 카카오 로그인 버튼 사이의 간격 설정 */
	}
	.kakao-button, .naver-login-container {
		width: 100%; /* 버튼 너비 100%로 설정 */
	}
	.d-grid {
		margin: 0 auto; /* 버튼 그리드를 가운데 정렬 */
	}

	.loginFrame {
		border: 1px solid #ddd; /* 테두리 색상과 두께 설정 */
		padding: 20px; /* 패딩 설정 */
		border-radius: 5px; /* 모서리 둥글게 설정 */
		opacity : 20;
	}

	.form-control{
		background-color: #f0f0f0
	}

	.booklogo {
		width: 300px;
		height: 50px;
	}
</style>





<!-- Bootsrap Bundle Js -->
<script src="../vender/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Jquery Js -->
<script src="../vender/jquery/jquery-3.6.4.min.js"></script>
<!-- AOS Js -->
<script src="../vender/aos/dist/aos.js"></script>
<!-- Custom Js -->
<script src="../js/script.js"></script>

<!-- 카카오 로그인 관련 (아직 토큰 구현은 X), 로그인 후 회원페이지 구현도 X -->

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script>
	window.Kakao.init("cc6a247b745a3892157546103896c5c9");

	function kakaoLogin(){
		window.Kakao.Auth.login({
			scope:'profile_nickname, profile_image',
			success: function(authObj){
				console.log(authObj);
				window.Kakao.API.request({
					url:'/v2/user/me',
					success: res => {
						const kakao_account = res.kakao_account;
						console.log(kakao_account);
						// 로그인 성공 후 메인페이지로 리다이렉트
						window.location.href = '${pageContext.request.contextPath}/main';
					}
				});
			}
		});
	}
</script>


<!-- 네이버 로그인 -->

<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>

<script type="text/javascript">
	var naver_id_login = new naver_id_login("BAi6tKwBqYNBrWAe2kJ0", "http://localhost:8080/pages/page-login.html");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("white", 2,40);
	naver_id_login.setDomain("http://localhost:8080/pages/page-login.html");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();


	function naverSignInCallback() {
		// 로그인 성공 후 처리할 작업
		console.log(naver_id_login.getProfileData('email'));
		console.log(naver_id_login.getProfileData('nickname'));
		// 로그인 성공 후 index.html로 리다이렉트
		window.location.href = '../index.html';
	}

	// 페이지 로드 완료 후 실행
	window.addEventListener('load', function() {
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
	});

</script>



<script>
	$(document).ready(function() {
		$("#loginForm").submit(function(e) {
			e.preventDefault();
			var formData = {
				userId: $("#userId").val(),
				password: $("#password").val()
			};
			console.log(formData);

			$.ajax({
				type: "POST",
				contentType: "application/json",
				url: "/pages/login",
				data: JSON.stringify(formData),
				dataType: 'json',
				success: function(result) {
					if (result.success) {
						localStorage.setItem('userName', result.userName);
						window.location.href = "/";
					} else {
						alert(result.message);
					}
				},
				error: function(e) {
					alert("로그인 오류 발생");
				}
			});
		});
	});
</script>

</body>
</html>