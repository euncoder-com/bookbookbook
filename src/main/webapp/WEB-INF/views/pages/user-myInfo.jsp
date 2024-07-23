<%@page contentType="text/html; charset=UTF-8"%>
<html lang="ko" class="translated-ltr">
	<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../img/pages/icon.png" type="image/png">
    <title>북북북 | 나의 정보</title>
    <!-- Bootstrap Css -->
    <link rel="stylesheet" href="../vender/bootstrap/css/bootstrap.min.css">
    <!-- Icofont Css -->
    <link rel="stylesheet" href="../vender/icofont/icofont.min.css">
    <!-- AOS Css -->
    <link rel="stylesheet" href="../vender/aos/dist/aos.css">
    <!-- Remix Icons -->
    <link rel="stylesheet" href="../vender/remixicon/remixicon.css">
	<!-- Custom Css -->
	<link rel="stylesheet" href="../css/style2.css">
    <!-- Common Css -->
    <link rel="stylesheet" href="../css/common.css">
    <link type="text/css" rel="stylesheet" charset="UTF-8" href="https://www.gstatic.com/_/translate_http/_/ss/k=translate_http.tr.26tY-h6gH9w.L.W.O/am=GAY/d=0/rs=AN8SPfrev-A3NvrBP0gNq8zXCqKY7IcBLA/m=el_main_css">
	</head>

	
<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">
<div class="bg-elements elements-top-header">
    <!-- navbar -->
    <div class="elements-nav">
        <!-- bootom nav -->
        <nav class="navbar navbar-expand bottom-nav bg-black borer-bottom border-opacity-10 border-white py-lg-0 py-3 bg-opacity-25">
                    <div class="container">
                        <div class="position-relative d-flex align-items-center gap-2 site-brand">
                            <img src="../img/bookbookbookLogo.png" alt="북북북 로고">
                            <div class="lh-1">
                               <h5 class="fw-bold m-0 text-white">BOOKBOOKBOOK</h5>
                               <!-- <small class="text-muted text-white-50">One Page</small> -->
                            </div>
                            <a class="stretched-link" href="/"></a>
                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class="navbar-nav m-auto gap-4 m-none">
                                <li class="nav-item dropdown single-dropdown-nav">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 나의 서재 </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="shop-product-grid.html">읽은 책</a></li>
                                        <li><a class="dropdown-item" href="shop-product-list.html">읽고 있는 책</a></li>
                                        <li><a class="dropdown-item" href="shop-product-full-three-coulmn.html">읽고 싶은 책</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="nav-link" href="#" role="button" aria-expanded="false"> 나의 캐릭터 </a>
                                </li>
                                <li class="nav-item dropdown single-dropdown-nav">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 나의 정보 </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="shop-product-grid.html">나의 정보</a></li>
                                        <li><a class="dropdown-item" href="shop-product-list.html">나의 달력</a></li>
                                        <li><a class="dropdown-item" href="shop-product-full-three-coulmn.html">나의 메모</a></li>
                                        <li><a class="dropdown-item" href="shop-product-full-four-coulmn.html">나의 통계</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <a href="./page-login.html" class="btn btn-purple rounded-pill d-none d-lg-block btn-theme"> 로그인 </a>
                            <a href="#" class="link-light d-lg-none ms-auto" data-bs-toggle="offcanvas" data-bs-target="#sidebarnav" aria-controls="sidebarnav"><i class="ri-menu-3-line ri-lg"></i></a>
                        </div>
                    </div>
                </nav>
    </div>
    <!-- header -->
    <div class="py-5">
        <div class="container pt-5">
            <div class="row justify-content-center">

                <div class="col-xl-6 col-lg-5 col-md-10 col-12">
                    <div class="d-flex gap-3 align-items-center">
                        <a class="btn btn-outline-light px-5 py-3 rounded-pill" href="/pages/user-myInfo"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">나의 정보</font></font>
                        </a>

                        <a class="btn btn-outline-light px-5 py-3 rounded-pill" href="/pages/user-myMemo"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">나의 메모</font></font></font></font></a>

                        <a class="btn btn-outline-light px-5 py-3 rounded-pill" href="/pages/user-myCalendar"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">나의 달력</font></font></font></font></a>

                        <a class="btn btn-outline-light px-5 py-3 rounded-pill" href="/pages/user-myStat1"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">나의 통계</font></font></font></font></a>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="w-100">
        <img src="../img/pages/hero-wave.svg" alt="" class="img-fluid w-100">
    </div>
</div>
<!-- Elements Components -->
<div class="py-5" id="elements">
    <div class="container">
        
<div class="container" style="padding:100">
        <div class="row g-5 p">
            <form action="account-orders.html" class="d-grid gap-2 input-group-lg row gap-5 m-5">
                <div class="mb-3">
                    <label class="form-label small">이메일</label>
                    <input type="text" class="form-control bg-light border-0 px-3 py-2" placeholder="이메일을 입력하세요">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label small">닉네임</label>
                    <input type="email" class="form-control bg-light border-0 px-3 py-2" placeholder="닉네임을 입력하세요" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label small">이름</label>
                    <input type="password" class="form-control bg-light border-0 px-3 py-2" placeholder="이름을 입력하세요" id="exampleInputPassword1">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label small">전화번호</label>
                    <input type="password" class="form-control bg-light border-0 px-3 py-2" placeholder="전화번호를 입력하세요" id="exampleInputPassword1">
                </div>

                <button type="submit" class="btn btn-purple btn-theme">수정하기</button>
            </form>
        </div>
    </div>
    </div>
</div>

<!-- Nav Sidebar -->
<%@ include file="../navSidebar.jsp" %>

<!-- 푸터 포함 -->
<%@ include file="../footer.jsp" %>


<!-- Bootsrap Bundle Js -->
<script src="../vender/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Jquery Js -->
<script src="../vender/jquery/jquery-3.6.4.min.js"></script>
<!-- AOS Js -->
<script src="../vender/aos/dist/aos.js"></script>
<!-- Custom Js -->
<script src="../js/script.js"></script>

</body>
</html>