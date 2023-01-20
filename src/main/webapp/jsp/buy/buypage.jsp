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
      <div class="buy-container">
        <div class="buy-customer-info-box">
          <div class="customer-info">주문자 정보</div>
          <div class="customer-box">
            <div class="customer-label-box"><label>주문자</label></div>
            <div class="customer-input-box">
              <input placeholder="이름을 입력해 주세요." type="text" />
            </div>
          </div>
          <div class="customer-box">
            <div class="customer-label-box"><label>연락처</label></div>
            <div class="customer-input-box">
              <input placeholder="'-'을 빼고 입력해 주세요." type="text" />
            </div>
          </div>
          <div class="customer-box">
            <div class="customer-label-box"><label>이메일 주소</label></div>
            <div class="customer-input-box">
              <input placeholder="example@naver.com" type="text" />
            </div>
          </div>
          <div class="customer-box">
            <div class="customer-label-box"><label>집 주소</label></div>
            <div class="customer-input-box">
              <input placeholder="상세 주소 까지 기입 해주세요." type="text" />
            </div>
          </div>
        </div>

        <div>
          <button>결제하기</button>
        </div>
      </div>
    </form>
  </body>
</html>
