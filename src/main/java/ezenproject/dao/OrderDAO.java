package ezenproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import ezenproject.dto.OrderDTO;



@Mapper
@Repository
public interface OrderDAO {
	public List<OrderDTO> list();
	public void statusChange (OrderDTO dto);
	public void deleteData(int num);
	
	public void orderSave(OrderDTO dto);
	public List<OrderDTO> myOrderList(String memnumber);
	public OrderDTO selectOrderInformation(int num);
	public OrderDTO checkOrderStatus(String order_number);
	
	public void updateOrderInformation(OrderDTO dto);
	public List<OrderDTO> cartOrderSave(List<OrderDTO> orderList);

}
