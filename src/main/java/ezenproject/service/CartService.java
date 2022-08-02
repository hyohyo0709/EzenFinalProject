package ezenproject.service;

import ezenproject.dto.CartDTO;

public interface CartService {
		
//		public CartDTO contentProcess(String member_number);
//	 	List<CartDTO> cartMoney();
//	    public void insertProcess(CartDTO dto);
//	    List<CartDTO> listCartProcess();
//	    public void delete(int num);
//	    public void deleteAll(String member_number);
//	    public void update(int num);
//	    int sumMoney(String member_number);
//	    int countCart(String member_number, String book_id);
//	    public void updateCart(CartDTO dto);
//	    public void modifyCart(CartDTO dto);
//		public CartDTO selectCartProcess(int code_id);
		
		
		public int addCart(CartDTO dto);
}

