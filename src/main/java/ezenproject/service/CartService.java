package ezenproject.service;

import java.util.List;

import ezenproject.dto.CartDTO;

public interface CartService {
		
		public int addCartProcess(CartDTO dto);
		public List<CartDTO> getCartProcess(String member_number);
		public List<CartDTO> cartListProcess();
		;
}

