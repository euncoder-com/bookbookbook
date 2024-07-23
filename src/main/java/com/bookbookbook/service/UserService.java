package com.bookbookbook.service;

import com.bookbookbook.domain.BestsellerVO;
import com.bookbookbook.domain.BookshelfVO;
import com.bookbookbook.domain.ReportVO;
import com.bookbookbook.domain.UserVO;
import jakarta.servlet.http.HttpSession;

import java.util.List;

public interface UserService {
	
	//회원가입, 로그인 관련
	void registerUser(UserVO userVO);
	UserVO loginUser(String userId, String password);
	String findEmail(String userName, String userTel);
	boolean findAndResetPassword(String userName, String userId, String userTel);

	//채팅
	public void submitReport(ReportVO vo);

	//나의 통계 화면
	List<BookshelfVO> readStatus(BookshelfVO vo, HttpSession session); // 여러 개의 책 상태 정보를 조회
}
