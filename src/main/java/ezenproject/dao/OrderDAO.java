package ezenproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;


import ezenproject.dto.OrderDTO;





@Mapper
@Repository
public interface OrderDAO {
	public OrderDTO selectOrderInformation(String mnum) throws DataAccessException;
	public List<OrderDTO> orderList(String mnum) throws DataAccessException;
	public void updateOrderInformation(String mnum) throws DataAccessException;
	public void deleteOrder(int num) throws DataAccessException;
	public OrderDTO orderStatus(String onum) throws DataAccessException;
} 
