<%@ page language="java" 
contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="../img/pages/icon.png" type="image/png">
        <title>북북북 | 도서 상세 페이지</title>
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
        <!-- Common Css -->
        <link rel="stylesheet" href="../css/common.css">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<!--user-bookDetails CSS-->
		<link rel="stylesheet" href="../css/user-bookDetails.css">
		
		
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="https://unpkg.com/@dotlottie/player-component@latest/dist/dotlottie-player.mjs" type="module"></script>
    </head>
    <body>
        
        <div class="bg-white white-top-header position-relative">
            <!-- navbar -->
            <div class="elements-nav">
                <!-- bootom nav -->
                <nav class="navbar white-main-nav my-account-nav navbar-expand bottom-nav bg-white border-bottom border-opacity-10 border-white py-lg-0 py-3 bg-opacity-25">
                    <div class="container">
                        <div class="position-relative d-flex align-items-center gap-2 site-brand">
                                                            <i class="ri-slideshow-line fs-2 lh-1 text-black"></i>
                                                            <div class="lh-1">
                                                               <h5 class="fw-bold m-0 text-black">Software</h5>
                                                           
                                                            </div>
                                                            <a class="stretched-link" href="../index.html"></a>
                                                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class="navbar-nav m-auto gap-4 m-none">
                                <li class="nav-item">
                                   
									
                                </li>
                                
								<li class="nav-item dropdown single-dropdown-nav">
															                          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 나의 서재 </a>
															                          <ul class="dropdown-menu">
															                              <li><a class="dropdown-item" href="pages/portfolio-full-width.html">읽은 책</a></li>
															                              <li><a class="dropdown-item" href="pages/portfolio-boxed.html">읽고 있는 책</a></li>
															                              <li><a class="dropdown-item" href="pages/portfolio-classic.html">읽고 싶은 책</a></li>
															                          </ul>
															                      </li>
								                         
								                                <a class="nav-link" href="#" role="button" aria-expanded="false"> 나의 캐릭터 </a>
								                               
								                          
															
															
															<li class="nav-item dropdown single-dropdown-nav">
															                           <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 나의 정보 </a>
															                           <ul class="dropdown-menu">
															                               <li><a class="dropdown-item" href="pages/portfolio-full-width.html">나의 정보</a></li>
															                               <li><a class="dropdown-item" href="pages/portfolio-boxed.html">나의 달력</a></li>
															                               <li><a class="dropdown-item" href="pages/portfolio-classic.html">나의 메모</a></li>
															                               <li><a class="dropdown-item" href="pages/portfolio-classic.html">나의 통계</a></li>
															                           </ul>
															                       </li>
																					</ul>
																				</li>
																			</ul>
								                        <a href="index.html" class="btn btn-purple rounded-pill d-none d-lg-block btn-theme"> 로그인 </a>
								                        <a href="#" class="link-light d-lg-none ms-auto" data-bs-toggle="offcanvas" data-bs-target="#sidebarnav" aria-controls="sidebarnav"><i class="ri-menu-3-line ri-lg"></i></a>
								                    </div>
								                </div>
								            </nav>
								        </div>
                           
                            <a href="#" class="link-dark d-lg-none ms-auto" data-bs-toggle="offcanvas" data-bs-target="#sidebarnav" aria-controls="sidebarnav"><i class="ri-menu-3-line ri-lg"></i></a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
       <!--  내용  -->
	   <div class="container">
	       <div class="row justify-content-center">
	           <div class="col-lg-8 ps-lg-0 pb-5">
	               <div class="ps-lg-5 pt-lg-5">
	                   <div class="d-flex align-items-start justify-content-between border rounded-4 border-secondary-emphasis p-4 mb-4">
	                       <div>
	                        
	                       </div>
	                       <div>
	                           <h2>불편한 편의점2</h2>
	                           <img src="../img/booksampleimage.jpg" alt="Book Image" class="img-fluid mb-3" width=200px height=200px>
	                           <table class="table table-borderless">
	                               <tr>
	                                   <td>저자정보</td>
	                                   <td>지은이: 김호연</td>
	                               </tr>
	                               <tr>
	                                   <td>출판사</td>
	                                   <td>나무옆의자</td>
	                               </tr>
	                               <tr>
	                                   <td>책소개</td>
	                                   <td>70만 독자를 사로잡은 재미와 감동 '불편한 편의점'이 다시 열렸다!</td>
	                               </tr>
	                               <tr>
	                                   <td>출판연월</td>
	                                   <td>2022</td>
	                               </tr>
	                               <tr>
	                                   <td>ISBN</td>
	                                   <td>9791161571379</td>
	                               </tr>
	                               <tr>
	                                   <td>페이지수</td>
	                                   <td>200 페이지</td>
	                               </tr>
	                               <tr>
	                                   <td>평점</td>
	                                   <td>
	                                       <div class="rating">
	                                           <input type="radio" name="rating" id="star5"><label for="star5">&#9733;</label>
	                                           <input type="radio" name="rating" id="star4"><label for="star4">&#9733;</label>
	                                           <input type="radio" name="rating" id="star3"><label for="star3">&#9733;</label>
	                                           <input type="radio" name="rating" id="star2"><label for="star2">&#9733;</label>
	                                           <input type="radio" name="rating" id="star1"><label for="star1">&#9733;</label>
	                                       </div>
	                                   </td>
	                               </tr>
	                           </table>
	                       </div>
						   <button class="btn d-flex align-items-center" id="wish-book-btn">
						            <img src="../img/wishbook.png" alt="Heart Icon" 
									style="width: 30px; height: 30px; margin-right: 5px;">읽고 싶은 책
						   </button>
						  <!--    <i class="bi bi-heart">	 </i>    -->
	                   </div>
	                   <nav>
	                       <div class="nav nav-tabs justify-content-center" id="nav-tab" role="tablist">
	                           <button class="nav-link active" id="nav-read-tab" data-bs-toggle="tab" data-bs-target="#nav-read" type="button" role="tab" aria-controls="nav-read" aria-selected="true">읽은 책</button>
	                           <button class="nav-link" id="nav-reading-tab" data-bs-toggle="tab" data-bs-target="#nav-reading" type="button" role="tab" aria-controls="nav-reading" aria-selected="false">읽고 있는 책</button>
	                       </div>
	                   </nav>
	                   <div class="tab-content" id="nav-tabContent">
	                       <div class="tab-pane fade show active" id="nav-read" role="tabpanel" aria-labelledby="nav-read-tab">
	                         <!--####서버까지 끌고 가야하니까 name??주기 #### --> 
							 <form>
								<div class="mb-3">
								         <label for="startDate" class="form-label">시작일</label>
								         <input type="date" class="form-control" id="startDate" value="2024-06-20">
								  </div>
								  <div class="mb-3">
									<!-- ######## 추후 종료일이 시작일보다 빠를 수 없게 하기  ##########-->
								         <label for="endDate" class="form-label">종료일</label>
								          <input type="date" class="form-control" id="endDate" value="2024-06-25">
								   </div>
	                               <div class="mb-3">
	                                   <label for="user-rating" class="form-label">평점을 남겨주세요!</label>
	                                   <div class="rating">
	                                       <input type="radio" name="user-rating" id="user-star5"><label for="user-star5">&#9733;</label>
	                                       <input type="radio" name="user-rating" id="user-star4"><label for="user-star4">&#9733;</label>
	                                       <input type="radio" name="user-rating" id="user-star3"><label for="user-star3">&#9733;</label>
	                                       <input type="radio" name="user-rating" id="user-star2"><label for="user-star2">&#9733;</label>
	                                       <input type="radio" name="user-rating" id="user-star1"><label for="user-star1">&#9733;</label>
	                                   </div>
	                               </div>
								   <div class="d-flex justify-content-center">
								         <button type="submit" class="btn" id="save-btn">저장하기</button>
								     </div>
	                           </form>
							   
	                       </div>
						   
						   <div class="tab-pane fade" id="nav-reading" role="tabpanel" aria-labelledby="nav-reading-tab">
						       <form action="updateReadingBook" method="post">
						           <div class="mb-3">
						               <label for="read-pages" class="form-label">읽은 페이지</label>
						               <input type="text" id="read-pages" class="form-control" name="read-pages">
						           </div>
						           <div class="mb-3">
						               <label for="startDate" class="form-label">시작일</label>
						               <input type="date" class="form-control" id="startDate" name="startDate">
						           </div>
						           <div class="d-flex justify-content-center">
						               <button type="submit" class="btn" id="save-as-reading-book-btn">읽고 있는 책으로 저장하기</button>
						               <button type="submit" class="btn" id="update-btn">수정하기</button>
						           </div>
						       </form>
						   </div>

	                   </div>
	               </div>
	           </div>
	       </div>
	   </div>
 
      
	   		  
		<!-- Nav Sidebar -->
		<%@ include file="navSidebar.jsp" %>
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
	
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
		
		<!--user-bookDetails.js-->
		<script src="../js/user-bookDetails.js"></script>
		
		

    </body>
</html>
