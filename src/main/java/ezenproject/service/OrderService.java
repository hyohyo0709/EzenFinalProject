package ezenproject.service;


import java.util.List;

import ezenproject.dto.OrderDTO;


public interface OrderService {
	//주문 리스트
	public List<OrderDTO>listOrder(String mnum);
	//주문 뷰페이지
	public OrderDTO orderInformation(String mnum) throws Exception;
	//주문 취소
	public void updateOrder(String mnum) throws Exception;
	//주문 삭제
	public void deleteOrder(int num) throws Exception;
	//주문 배송상태 확인
	public OrderDTO orderStatus(String onum) throws Exception;
}
