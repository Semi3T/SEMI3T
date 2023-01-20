const sell_price = document.querySelector("input[name=sell_price]");
const amount = document.querySelector("input[name=amount]");
const add = document.querySelector("input[name=add]");
const minus = document.querySelector("input[name=minus]");
const sum = document.querySelector("input[name=sum]");

function priceToString(price) {
  return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

let amountValue = parseInt(amount.value);
let sellValue = parseInt(sell_price.value);
add.addEventListener("click", () => {
  amount.value++;
  amountValue++;
  sum.value = priceToString(sellValue * amountValue) + " 원";
});

minus.addEventListener("click", () => {
  if (amount.value != 1) {
    amount.value--;
    amountValue--;
    sum.value = priceToString(sellValue * amountValue) + " 원";
  }
});

sum.value = priceToString(sell_price.value) + " 원";


		function modify_comment(no) {
			// 수정하기 버튼을 눌렀을 때, input이 입력 가능해야 함.
			
			//button1-${c.c_no } 삭제하기 
			//button2-${c.c_no } 수정하기
			
			// 사용 가능하게.
			let inputVal = $('#button2-' + no).val();
			
			if(inputVal == '수정하기') {
				if(confirm("댓글을 정말 수정하시겠습니까?")) {
					// input이 사용 가능해져야 한다.
					// comment-content-c_no
					
					
					// id : #, class = .
					$('#comment-content-' + no).attr("disabled", false);
					
					//let value = $('#button1-' + no).val()
					
					$('#button1-' + no).val('수정하기');
					$('#button2-' + no).val('취소하기');
				}
			} else {
				// 취소하기 일때.
				if(confirm("댓글 수정을 취소하시겠습니까?")) {
					
					$('#comment-content-' + no).attr("disabled", true);
				
					$('#button1-' + no).val('삭제하기');
					$('#button2-' + no).val('수정하기');
				}
			}
		}
	
		
		function modify_comment2(no) {
			
			
			let inputVal = $('#button1-' + no).val();
			
			let contentVal = $('#comment-content-' + no).val();
			
			if(inputVal == '수정하기') {
				// 수정하기.
				
			console.log("댓글 번호 : " + no);
			console.log("댓글 내용 : " + contentVal);
				if(confirm("댓글을 정말 수정하시겠습니까?")) {
					// 뷰에서 해결해주는 영역	
					// url - 어디로 갈지
					// type - GET(default), POST
					// data - 뭘 보낼지 ? & 
					// dataType - 응답을 뭘로 받을지.
					// contentType - 내가 뭘 보내는지
					// success - 응답받는데 성공했다면?
					// error - 응답받는데 실패했다면?
							
					$.ajax({
						url: "CommentController",
						data: {
							"c_no": no,
							"c_content": contentVal
						}
					}).done(function(response_code) {
						console.log(response_code);
						if(response_code == 1) {
							$('#comment-content-' + no).attr("disabled", true);	
							alert("수정이 완료되었습니다.");
							
							// 버튼 이름 바꿔주기
							$('#button1-' + no).val('삭제하기');
							$('#button2-' + no).val('수정하기');
						} else {
							alert("수정이 실패하였습니다. 다시 시도해주세요.");
						}
					});
					
					// ajax => 비동기 통신 기술
					
				}
			} else {
				// 삭제하기
				if(confirm("댓글을 정말 삭제하시겠습니까?")) {
					
					$.ajax({
						url: "CommentController",
						data: {
							"c_no": no
						}
					}).done(function(response) {
						console.log(response);
						// response == 1 ?
						// comment-container-${c.c_no }		
						// .remove() 요소 전체 삭제. 
						// .empty() 자식 요소만 삭제
						
						alert('삭제가 완료되었습니다.');
						$('#comment-container-' + no).remove();
					})
				}
				
			}
		}
