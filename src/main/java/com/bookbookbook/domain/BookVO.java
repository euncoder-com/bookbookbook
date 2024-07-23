package com.bookbookbook.domain;

import lombok.Data;

@Data
public class BookVO {

	private Integer cateNum;
	private String bookTitle;
	private String isbn;
	private String writer;
	private String publisher;
	private String publicationDate;
	private String bookPreview;
    private String bfrealname;
	private String bname;
	private Integer bookPage;
}
