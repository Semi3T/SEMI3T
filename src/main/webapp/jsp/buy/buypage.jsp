<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>buy page check</title>
  </head>
  <body>
    <form action="#">
    <div class="order">
    	주문서
    </div>
		<div class="buy-product-info-box">
			<div id="buy-product-name">주문상품<hr></div>
			<div id="buy-product-name-check">(산해경 포션) 상품을 주문합니다.</div>
		</div>
		<div class="buy-product-customer-box">
			<div id="buy-product-name">주문자 정보<hr></div>
			
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>주문자 이름</label></div>
					<div id="buy-input-box"><input value=""></div>
				</div>     
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>휴대폰 번호</label></div>
					<div id="buy-input-box"><input value=""></div>
				</div>     
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>이메일</label></div>
					<div id="buy-input-box"><input value=""></div>
				</div>     
				<div class="buy-product-customer">
					<div id="buy-label-box"><label></label></div>
					<div class="delivery-info">배송이 시작되면 주문 처리 과정을 이메일과 휴대폰 번호로 알려드리니, 꼭 정확한 정보를 입력해 주세요.</div>
				</div>     
		</div>
		<div class="buy-product-shipping-box">
			<div id="buy-product-name">배송 정보<hr></div>
			
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>받는사람</label></div>
					<div id="buy-input-box"><input value=""></div>
				</div>     
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>주소</label></div>
					<div id="buy-input-box"><input value=""></div>
				</div>     
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>휴대전화</label></div>
					<div id="buy-input-box"><input value=""></div>
				</div>     
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>요청사항</label></div>
					<div id="buy-input-box"><input></div>
				</div>     
		</div>
		
        <div class="buy-button">
          <button>결제하기</button>
        </div>
    </form>
  </body>
</html>
