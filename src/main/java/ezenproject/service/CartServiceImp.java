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
	private CartDAO dao;
	
	@Override
	public int addCart(CartDTO dto) {
	CartDTO checkCart = dao.checkCart(dto); 
	if(checkCart != null) {
		return 2;
		}
		// 장바구니 등록 & 에러 시 0반환
	try {
		return dao.addCart(dto);
	} catch (Exception e) {
		return 0;
	}
}

	
	

}
