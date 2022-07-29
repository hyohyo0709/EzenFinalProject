package ezenproject2.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ezenproject2.dao.OrderDAO;
import ezenproject2.dto.BookDTO;
import ezenproject2.dto.OrderDTO;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class OrderServiceImp implements OrderService{

	
	@Autowired
	private OrderDAO dao;
	public OrderServiceImp() {
		// TODO Auto-generated constructor stub
	}
	

	
	
}
