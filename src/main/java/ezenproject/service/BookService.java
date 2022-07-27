package ezenproject.service;

import java.util.List;

import ezenproject.dto.BookDTO;
import ezenproject.dto.PageDTO;

public interface BookService {

	
	public BookDTO selectOneProcess(int num);
	public int countProcess(); 
	public List<BookDTO> booklistProcess(PageDTO pv);
	public BookDTO contentProcess(int num);
	public List<BookDTO> img_listProcess();
	
///////////////////여기부터 관리자 페이지 서비스입니다.//////////////////
	public List<BookDTO> listProcess();
	public void statusCheckProcess(int num);
	public void statusChangeOnProcess(int num);
	public void statusChangeOffProcess(int num);
	
	public void stockCheckProcess(int num);
	public void stockChangeOnProcess(int num);
	public void stockChangeOffProcess(int num);
	
	public void newBookProcess(BookDTO dto);
	public void newBookIDProcess(BookDTO dto);
	public void deleteDataProcess(int num, String urlpath);
	public void updateBookProcess(BookDTO dto, String urlpath);
////////////////////여기까지 관리자 페이지 서비스입니다/////////////////////
	
	
	
}
