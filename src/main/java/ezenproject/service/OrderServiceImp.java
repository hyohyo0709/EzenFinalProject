package ezenproject.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ezenproject.dao.OrderDAO;
import ezenproject.dto.OrderDTO;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class OrderServiceImp implements OrderService{

	
	@Autowired
	private OrderDAO dao;
	
	public OrderServiceImp() {
	
	}
	
	@Override
	public List<OrderDTO> listOrder(String mnum) {
		return dao.orderList(mnum);
	}

	@Override
	public OrderDTO orderInformation(String mnum) throws Exception {
		return dao.selectOrderInformation(mnum);
	}

	@Override
	public void updateOrder(String mnum) throws Exception {
		dao.updateOrderInformation(mnum);
	}

	@Override
	public void deleteOrder(int num) throws Exception {
		dao.deleteOrder(num);
		
	}

	@Override
	public OrderDTO orderStatus(String onum) throws Exception {
		return dao.orderStatus(onum);
	}




}
