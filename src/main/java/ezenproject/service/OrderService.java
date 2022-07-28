package ezenproject.service;

import java.util.List;

import ezenproject.dto.BookDTO;
import ezenproject.dto.OrderDTO;

public interface OrderService {

public OrderDTO selectOneProcess(int num);
	
	////////////여기서부터 관리자 페이지 서비스입니다.///////////
	
	public List<OrderDTO> listProcess();
	
	
public void statusChangeProcess(OrderDTO dto);
	
public void deleteDataProcess(int num);
	
	
	////////////여기까지 관리자 페이지 서비스입니다.////////////
	
	
}
