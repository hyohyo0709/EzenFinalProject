package ezenproject.service;

import java.util.List;

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
	public int addCartProcess(CartDTO dto) {
		CartDTO checkCart = dao.checkCart(dto);
		if(checkCart != null) {
			return 2;
		}
		try {
			return dao.addCart(dto);
		}catch (Exception e) {
			return 0;
		}
	}

	@Override
	public List<CartDTO> getCartProcess(String member_number) {
		return dao.getCart(member_number);
		
	}

	@Override
	public List<CartDTO> cartListProcess() {
		return dao.cartlist();
	}


	
	

}
