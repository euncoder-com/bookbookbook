$(document).ready(function() {
      $('#nav-readBooks-tab').on('click', function() {
          console.log('읽은 책 탭 클릭됨');
          $.ajax({
              url: '/pages/user-myBookshelf/readBooks',
              method: 'GET',
              success: function(data) {
                  console.log('AJAX 요청 성공');
                  console.log('받은 데이터:', data);
                  var readList = $('#read-list');
                  readList.empty(); // 기존 내용 제거
                  if (data.length > 0) {
                      $.each(data, function(index, book) {
                          var bookItem = `
                              <div class="book-item d-flex align-items-start mb-4">
                                  <img src="${book.bookImage}" alt="책 표지" class="book-cover me-3" style="width: 100px; height: 150px;">
                                  <div class="book-info flex-grow-1">
                                      <div class="d-flex justify-content-between align-items-start">
                                          <div>
                                              <h5 class="book-title">${book.bookTitle}</h5>
                                              <p class="book-author mb-1">${book.writer}</p>
                                              <div class="book-rating mb-1">`;
                      
                          for (var i = 1; i <= book.rating; i++) {
                              bookItem += '★';
                          }
                          for (var i = book.rating + 1; i <= 5; i++) {
                              bookItem += '☆';
                          }

                          bookItem += `</div>
                                              <p class="book-dates">시작 ${book.startDate} 종료 ${book.endDate}</p>
                                          </div>
                                          <button class="btn btn-sm">
                                              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 256 256">
                                                  <path d="M229.66,58.34l-32-32a8,8,0,0,0-11.32,0l-96,96A8,8,0,0,0,88,128v32a8,8,0,0,0,8,8h32a8,8,0,0,0,5.66-2.34l96-96A8,8,0,0,0,229.66,58.34ZM124.69,152H104V131.31l64-64L188.69,88ZM200,76.69,179.31,56,192,43.31,212.69,64ZM224,128v80a16,16,0,0,1-16,16H48a16,16,0,0,1-16-16V48A16,16,0,0,1,48,32h80a8,8,0,0,1,0,16H48V208H208V128a8,8,0,0,1,16,0Z"></path>
                                              </svg>
                                          </button>
                                      </div>
                                  </div>
                              </div>`;
                          readList.append(bookItem);
                      });
                  } else {
                      var noDataItem = `
                          <div id="without-data">
                              <p>읽은 책이 없습니다!</p>
                              <div class="d-flex justify-content-center">
                                  <a href="#" class="btn btn-primary mx-2">베스트셀러 구경하러 가기</a>
                                  <a href="#" class="btn btn-secondary mx-2">추천 받기</a>
                                  <a href="#" class="btn btn-success mx-2">읽은 책 등록하기</a>
                              </div>
                          </div>`;
                      readList.append(noDataItem);
                  }
              },
              error: function() {
                  console.log('AJAX 요청 실패');
                  alert('읽은 책 데이터를 불러오는 중 오류가 발생했습니다.');
              }
          });
      });
  });