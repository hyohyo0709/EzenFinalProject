package ezenproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import ezenproject.dto.BookDTO;
import ezenproject.dto.PageDTO;


@Mapper
@Repository
public interface BookDAO {

	public int count();
	public List<BookDTO> booklist(PageDTO pv);
	public BookDTO content(int num);
	public List<BookDTO> img_list();
	
	
	public List<BookDTO> list();
	public BookDTO selectOne(int num);
	public void statusChangeOn(int num);
	public void statusChangeOff(int num);
	public void stockChangeOn(int num);
	public void stockChangeOff(int num);
	public void saveNewBook(BookDTO dto);
	public void deleteData(int num);
	public String getFile(int num);
	public void updateBook(BookDTO dto);
}
