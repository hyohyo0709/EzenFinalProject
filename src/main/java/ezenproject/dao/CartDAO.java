package ezenproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import ezenproject.dto.CartDTO;
@Mapper
@Repository
public interface CartDAO {
	
//	public CartDTO content(String member_number);
//	public void insert(CartDTO dto); //장바구니 추가
//    List<CartDTO> listCart(); //장바구니 목록
//    public void delete(int cart_id); //장바구니 개별 삭제
//    public void deleteAll(String member_number); //장바구니 비우기
//    public int sumMoney(String member_number); //장바구니 금액 합계
//    public int countCart(String member_number, String book_id); //장바구니 상품 갯수
//    public void updateCart(CartDTO dto); //장바구니 수정 
//    public void modifyCart(CartDTO dto);
//    public CartDTO selectCart(int cart_id);
//    
    
    /* 카트 추가 */
	public void addCart(CartDTO dto);
	
	/* 카트 삭제 */
	public int deleteCart(int num);
	
	/* 카트 수량 수정 */
	public int modifyCount(CartDTO dto);
	
	/* 카트 목록 */
	public List<CartDTO> getCart(String member_number);	
	
	/* 카트 확인 */
    public CartDTO checkCart(CartDTO dto);
}
