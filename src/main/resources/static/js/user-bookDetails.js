$(function() {
	
	//달력에서 날짜 선택 기능
	  $("#start-date, #end-date, #start-reading-date").datepicker({
	           dateFormat: "yy-mm-dd"
	        });
	    });
		
		//페이지 입력 시 "쪽"이라는 텍스트를 동적으로 업데이트
		$('#read-pages').on('input', function() {
		    var pages = $(this).val();
		    $('#page-display').text(pages + ' 쪽');
			
		$("#wish-book-btn").on("click", function() {
			       alert("책이 찜 목록에 추가되었습니다!");
		});

			/*  document.querySelector("dotlottie-player").addEventListener("click", function() {
			      alert("Lottie 애니메이션이 클릭되었습니다!");
			  });*/

});
