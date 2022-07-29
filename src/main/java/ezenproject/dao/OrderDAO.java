package ezenproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import ezenproject.dto.BookDTO;
import ezenproject.dto.OrderDTO;



@Mapper
@Repository
public interface OrderDAO {

	
	public List<OrderDTO> list();
	public void statusChange (OrderDTO dto);
	public void deleteData(int num);
	public OrderDTO selectOne(int num);
	public void addOrder(OrderDTO dto);
	
}
