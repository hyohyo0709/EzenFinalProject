package ezenproject.dto;

import org.springframework.stereotype.Component;

@Component
public class OrderDTO {

	
	private int num;
	private String order_number;
	private int order_qty;
	private String member_number;
	private String book_id;
	private int order_status;
	
	private MemberDTO ezenmembers;
	private BookDTO ezenbooks;
	
	
	
	public MemberDTO getEzenmembers() {
		return ezenmembers;
	}
	public void setEzenmembers(MemberDTO ezenmembers) {
		this.ezenmembers = ezenmembers;
	}
	public BookDTO getEzenbooks() {
		return ezenbooks;
	}
	public void setEzenbooks(BookDTO ezenbooks) {
		this.ezenbooks = ezenbooks;
	}
	
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getOrder_number() {
		return order_number;
	}
	public void setOrder_number(String order_number) {
		this.order_number = order_number;
	}
	public int getOrder_qty() {
		return order_qty;
	}
	public void setOrder_qty(int order_qty) {
		this.order_qty = order_qty;
	}
	public String getMember_number() {
		return member_number;
	}
	public void setMember_number(String member_number) {
		this.member_number = member_number;
	}
	public String getBook_id() {
		return book_id;
	}
	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}
	public int getOrder_status() {
		return order_status;
	}
	public void setOrder_status(int order_status) {
		this.order_status = order_status;
	}
	
	
	
	
}
