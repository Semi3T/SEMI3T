<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>buy page check</title>
  </head>
  <body>
    <form action="BuyPageC" onsubmit="buy_price()" method="post">
    <div class="order">
    	주문서
    </div>
		<div class="buy-product-info-box">
			<div id="buy-product-name">주문상품<hr></div>
			<table>
				<tr>
					<td><img style="width: 200px" src="jsp/master/imgFolder/${param.img}"></td>
					<td style="padding-left: 50px; font-size: 15pt; font-weight: bold;"> x ${param.final_amount } 개 </td>
					<td style="padding-left: 200px; font-size: 15pt; font-weight: bold; color: blue;"> ${param.brand }</td>
					<td style="padding-left: 5px; font-size: 17pt; font-weight: bold;"> ${param.title} </td>
				</tr>
			</table>
			
	
		</div>
		<div class="buy-product-customer-box">
			<div id="buy-product-name">주문자 정보<hr></div>
			
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>주문자 이름</label></div>
					<div id="buy-input-box"><input name="ship-name" id="ship-name" value="${sessionScope.account.l_name}"></div>
				</div>     
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>휴대폰 번호</label></div>
					<fmt:formatNumber var="licsNo" value="${sessionScope.account.l_phonenumber}" pattern="'0'###,###,####"/>
					<div id="buy-input-box"><input name="ship-phonenumber" id="ship-phonenumber" value="${fn:replace(licsNo, ',', '-')}"></div>
				</div>     
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>주소</label></div>
					<div id="buy-input-box"><input name="ship-add" id="ship-add" value="${sessionScope.account.l_address}"></div>
				</div>     
				<div class="buy-product-customer">
					<div id="buy-label-box"><label></label></div>
					<div class="delivery-info">배송이 시작되면 주문 처리 과정을 주소와 휴대폰 번호로 알려드리니, 꼭 정확한 정보를 입력해 주세요.</div>
				</div>     
		</div>
		
		<div class="buy-product-shipping-box">
			<div style="display: flex; justify-content: space-between;">
			<div id="buy-shipping-name" >배송 정보</div>
			<div style="margin-top: auto;"><input class="sameaddress" type="checkbox" id="sameAddressControl"/> 주문자와 동일</div>
			</div>
			<hr>
				
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>받는사람</label></div>
					<div id="buy-input-box"><input name="buy-name" id="buy-name" value=""></div>
				</div>     
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>주소</label></div>
					<div id="buy-input-box"><input name="buy-add" id="buy-add" value=""></div>
				</div>     
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>휴대전화</label></div>
					<div id="buy-input-box"><input name="buy-phonenumber" id="buy-phonenumber" value=""></div>
				</div>     
				<div class="buy-product-customer">
					<div id="buy-label-box"><label>요청사항</label></div>
					<div id="buy-input-box"><input ></div>
				</div>     
		</div>
		<hr>
		
		<div class="buy-purchase-box">
			<div id="buy-purchase-name">결제정보<hr></div>
		
				<div class="buy-mini-box">
					<div class="buy-product-price">
						<div id="buy-label-box"><label>주문가격</label></div>
						<div id="buy-input-box-p"><input name="buy_sell_praice" value="${param.sum}"></div>
					</div>
					<div class="buy-product-price">
						<div id="buy-label-box"><label>배송비</label></div>
						<div id="buy-input-box-p"><input name="buy_fee_praice" readonly="readonly" value="3,000원"></div>
					</div>
					<div class="buy-product-price-fmt">
						<div id="buy-label-box"><label>할인금액</label></div>
							<div id="buy-input-box-p">
							<fmt:formatNumber value="${param.sale_price}" pattern="#,###" />원
							</div>
					<input type="hidden" name="buy_sale_praice" readonly="readonly" value="${param.sale_price }원">
					</div>
					<hr>
					<div class="buy-product-price">
						<div id="buy-label-box"><label>결제금액</label>
					</div>
						<div id="buy-input-box-p"><input name="Allpraice" readonly  value=""></div>
					</div>
				</div>
		</div>
        <div class="buy-button">
          <button>결제하기</button>
        </div>
    </form>
    
    

  </body>
</html>
