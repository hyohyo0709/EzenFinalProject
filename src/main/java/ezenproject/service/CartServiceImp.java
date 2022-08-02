package ezenproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ezenproject.dao.CartDAO;
import ezenproject.dto.CartDTO;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class CartServiceImp implements CartService{
	@Autowired
	private CartDAO dao;
	public CartServiceImp() {
		
	}
	
	@Override
	public void addCartProcess(CartDTO dto) {
		 dao.addCart(dto);		
	}

	
	

}
