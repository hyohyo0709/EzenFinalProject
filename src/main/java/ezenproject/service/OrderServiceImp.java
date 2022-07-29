package ezenproject.service;

import java.io.File;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


import ezenproject.dao.OrderDAO;
import ezenproject.dto.BookDTO;
import ezenproject.dto.OrderDTO;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class OrderServiceImp implements OrderService{

	
	@Autowired
	private OrderDAO dao;
	
	
	public OrderServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public OrderDTO selectOneProcess(int num) {
		
		return dao.selectOne(num);
	}
	
	
	@Override
	public void addOrderProcess(OrderDTO dto) {
	
		dao.addOrder(dto);
	}
	
	//////////////여기서부터 관리자 페이지 서비스입니다.////////////
	
	@Override
	public List<OrderDTO> listProcess() {
		
		return dao.list();
	}
	
	
	 @Override
	public void statusChangeProcess(OrderDTO dto) {
		 /*
			 * 주문 상태 0 : 주문 취소 / 배송 불가
			 * 주문 상태 1 : 주문 접수 
			 * 주문 상태 2 : 상품 준비
			 * 주문 상태 3 : 배송 준비
			 * 주문 상태 4 : 배송 중
			 * 주문 상태 5 : 배송 완료
			 * 
			 * 
			 * 
			 * */	 
		 		 
		dao.statusChange(dto);
		
	}
	
	 
	 
	 @Override
	public void deleteDataProcess(int num) {
		dao.deleteData(num);
		
	}
	
	
	
	
	/////////////여기까지 관리자 페이지 서비스입니다.////////////////
}
