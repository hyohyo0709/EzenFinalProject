<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
   <div class="container">
  <div class="row">
  <div class="col-12">
  <div class="list-group" id="quickmenu" align='center' > 
  <input type="text" id="mymenu" readonly="readonly"  class="list-group-item list-group-item-action active list-group-item-secondary"
    value="사용자 My Menu" />
  
  <button id="member" onclick="location.href='http://localhost:8090/mypage/memberdetail.do?num=${member.num}'" class="list-group-item list-group-item-action">회원정보 수정</button>
  <button id="order" onclick="location.href='http://localhost:8090/mypage/myorderlist.do?member_number=${member.member_number}'" class="list-group-item list-group-item-action">주문확인 / 취소</button>
  <button id="coupon" onclick="location.href='http://localhost:8090/members/newcouponsave'" class="list-group-item list-group-item-action">할인권 확인</button>

</div>
</div>
</div>
</div>