package com.bookbookbook.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bookbookbook.domain.BookshelfVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookbookbook.domain.ReportVO;
import com.bookbookbook.domain.UserVO;
import com.bookbookbook.service.UserService;

import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class UserController {
	// 로거 설정
	private static final Logger log = LoggerFactory.getLogger(UserController.class);

	// UserService 인스턴스를 위한 필드 선언
	private final UserService userService;

	// UserService 인스턴스를 주입받기 위한 생성자
	@Autowired
	public UserController(UserService userService) {
	    this.userService = userService;
	}

	// 사용자 등록 요청을 처리하는 메서드
	@PostMapping("/register")
	public String registerUser(@ModelAttribute UserVO userVO) { //String 타입의 반환 값은 뷰 이름 나타냄. @ModelAttribute: 요청 파라미터의 이름과 객체의 필드 이름을 매핑하여 값을 자동으로 설정합니다.
	    // UserService를 통해 사용자 등록 처리
	    userService.registerUser(userVO);
	    // 회원가입 성공 후 성공 페이지로 리다이렉트
	    return "redirect:/pages/user-login";
	}

	  // 회원가입 성공 페이지 요청을 처리하는 메서드
	  @GetMapping("/pages/page-signup-success") public String signUpSuccess() { // 회원가입 성공 JSP 페이지 반환
 			return "pages/user-login"; }

	// 로그인 요청을 처리하는 메서드
	@PostMapping("/pages/user-login")
	@ResponseBody
	public Map<String, Object> login(@RequestBody UserVO userVO, HttpSession session) {
	    // 응답 데이터를 담을 맵 생성
	    Map<String, Object> response = new HashMap<>();
	    // UserService를 통해 사용자 인증 처리
	    UserVO user = userService.loginUser(userVO.getUserId(), userVO.getPassword());
	    if (user != null) {
	        // 세션에 사용자 정보 저장
	        session.setAttribute("userNum", user.getUserNum()); //나의 통계 추가
	        session.setAttribute("userId", user.getUserId());
	        session.setAttribute("userName", user.getUserName());
	        // 로그인 성공 응답 설정
	        response.put("success", true);
	        response.put("message", "로그인 성공");
	    } else {
	        // 로그인 실패 응답 설정
	        response.put("success", false);
	        response.put("message", "아이디 또는 비밀번호가 올바르지 않습니다.");
	    }
	    // 응답 반환
	    return response;
	}

	// 로그아웃 요청을 처리하는 메서드
	@GetMapping("/logout")
	public String logout(HttpSession session) {
	    // 세션 무효화
	    session.invalidate();
	    // 메인 페이지로 리다이렉트
	    return "redirect:/";
	}

	// 이메일 찾기 요청을 처리하는 메서드
	@PostMapping("/find-email")
	@ResponseBody
	public Map<String, Object> findEmail(@RequestBody Map<String, String> request) {
	    // 응답 데이터를 담을 맵 생성
	    Map<String, Object> response = new HashMap<>();
	    String userName = request.get("userName");
	    String userTel = request.get("userTel");
	    // 사용자 이름과 전화번호가 입력되지 않은 경우
	    if (userName == null || userTel == null) {
	        response.put("success", false);
	        response.put("message", "이름과 전화번호를 모두 입력해주세요.");
	        return response;
	    }
	    // UserService를 통해 이메일 찾기 처리
	    String email = userService.findEmail(userName, userTel);
	    if (email != null) {
	        // 이메일 찾기 성공 응답 설정
	        response.put("success", true);
	        response.put("email", email);
	    } else {
	        // 이메일 찾기 실패 응답 설정
	        response.put("success", false);
	        response.put("message", "일치하는 사용자를 찾을 수 없습니다.");
	    }
	    // 응답 반환
	    return response;
	}

	// 이메일 찾기 페이지 요청을 처리하는 메서드 //여기부터
	@GetMapping("/find-email")
	public String emailReturnPage() {
	    return "pages/user-findEmail";
	}

	// 비밀번호 찾기 요청을 처리하는 메서드
	@PostMapping("/find-password")
	@ResponseBody
	public Map<String, Object> findPassword(@RequestBody Map<String, String> request) {
	    // 응답 데이터를 담을 맵 생성
	    Map<String, Object> response = new HashMap<>();
	    String userName = request.get("userName");
	    String userId = request.get("userId");
	    String userTel = request.get("userTel");
	    // UserService를 통해 비밀번호 찾기 및 재설정 처리
	    boolean isSuccess = userService.findAndResetPassword(userName, userId, userTel);
	    if (isSuccess) {
	        // 비밀번호 재설정 성공 응답 설정
	        response.put("success", true);
	        response.put("message", "임시 비밀번호가 이메일로 전송되었습니다. 로그인 페이지로 이동합니다.");
	    } else {
	        // 비밀번호 재설정 실패 응답 설정
	        response.put("success", false);
	        response.put("message", "비밀번호 재설정에 실패했습니다. 입력 정보를 확인해주세요.");
	    }
	    // 응답 반환
	    return response;
	}
	
	//#####################################
	//채팅 신고기능
	  @PostMapping("/submitReport")
	    @ResponseBody
		public void submitReport(@ModelAttribute ReportVO vo) {
			userService.submitReport(vo);
		}

   //######################################
   //나의 리그
	@GetMapping("/pages/user-myLeague")
	public String myLeague() {
		System.out.println("user-myLeague호출");
		return "pages/user-myLeague";
	}
	
	//#######################################
	//도서 검색 결과
	@GetMapping("/pages/book-bookSearchResult")
	public String bookSearchResult() {
		System.out.println("book-bookSearchResult 호출");
		return "pages/book-bookSearchResult";
	}
	
	//#######################################
	//도서 상세 페이지 
	@GetMapping("/pages/book-bookDetails")
	public String bookDetail() {
		System.out.println("book-bookDetails 호출");
		return "pages/book-bookDetails";
	}
	
	//#######################################
		//나의 달력
	@GetMapping("/pages/user-myCalendar")
	public String myCalendar() {
		System.out.println("user-myCalendar 호출");
		return "pages/user-myCalendar";
	}
	
	//#######################################
		//나의 메모
	@GetMapping("/pages/user-myMemo")
	public String myMemo() {
		System.out.println("user-myMemo 호출");
		return "pages/user-myMemo";
	}
	@GetMapping("/pages/user-myMemoDetail")
	public String myMemoDetail() {
		System.out.println("user-myMemoDetail 호출");
		return "pages/user-myMemoDetail";
	}

	//###################################
	//나의 통계
	@GetMapping("/pages/user-myStat1")
	public String myStat1() {
		System.out.println("user-myStat1호출");
		return "pages/user-myStat1";
	}

	@GetMapping("/checkBookStatus")
	@ResponseBody //메소드의 반환값이 HTTP 응답의 본문(body)으로 직렬화
	public List<BookshelfVO> checkBookStatus(@RequestBody BookshelfVO vo, HttpSession session) { //@RequestBody : HTTP 요청의 본문을 메소드의 파라미터로 변환
		return userService.readStatus(vo, session);
	}


	//#######################################
/*	// 나의 캐릭터
	@GetMapping("/pages/user-myCharacters")
	public String myCharacters() {
		System.out.println("user-myCharacters 호출");
		return "pages/user-myCharacters";
	}
	@GetMapping("/pages/user-myCharactersDetail")
	public String myCharactersDetail(@RequestParam("stage") Integer stage, Model m) {
		System.out.println("user-myCharactersDetail 호출, stage : " + stage);
		CharactersVO vo = new CharactersVO();
		vo = userService.myCharactersDetail(stage);
		System.out.println("user-myCharactersDetail 반환값 : " + vo.toString());

		m.addAttribute("character", vo);

		return "pages/user-myCharactersDetail";
	}*/

	//#######################################
	//나의 정보(수정)
	@GetMapping("/pages/user-myInfo")
	public String myInfo() {
		System.out.println("user-myInfo 호출");
		return "pages/user-myInfo";
	}

	//#######################################
	// 도서 위치 찾기
	@GetMapping("/pages/book-findLocatoin")
	public String location() {
		System.out.println("findLocation 호출");
		return "pages/book-findLocatoin";
	}

}




