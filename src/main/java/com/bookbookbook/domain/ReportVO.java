package com.bookbookbook.domain;

import lombok.Data;

@Data
public class ReportVO {

   private Integer reportedNum;
   private Integer chatroomNum;
   private String reportedUser;
   private Integer cateNum;
   private String reportTime;
   private String reportResult;
   private String reportType;
   private String reportUser;
   private String adminReportResult;
}
