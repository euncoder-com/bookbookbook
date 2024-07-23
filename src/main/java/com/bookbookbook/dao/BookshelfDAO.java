package com.bookbookbook.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.bookbookbook.domain.BookshelfVO;

@Mapper
public interface BookshelfDAO {


    //나의 서재 전체 탭팬
    List<BookshelfVO> getUserData();

    //나의 서재 읽은 책 탭팬
    List<BookshelfVO> getReadBooksDetails();

    //
    List<BookshelfVO> getReadingBooksDetails();

    //
    List<BookshelfVO> getWishlistBooks();


    //#############################
    //나의통계 화면
    List<BookshelfVO> checkBookStatus(BookshelfVO vo);

}
