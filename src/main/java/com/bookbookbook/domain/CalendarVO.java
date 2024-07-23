package com.bookbookbook.domain;

import lombok.Data;

@Data
public class CalendarVO {
   private Integer calendarNum;
   private Integer userNum;
   private String attendance;
   private String attendanceDate;
}