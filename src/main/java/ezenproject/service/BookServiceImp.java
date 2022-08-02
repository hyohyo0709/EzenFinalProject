package ezenproject.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ezenproject.dao.BookDAO;
import ezenproject.dto.BookDTO;
import ezenproject.dto.PageDTO;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class BookServiceImp implements BookService{

	
	
	@Autowired
	private BookDAO dao;
	
	public BookServiceImp() {
	}
	/////////////////////여기부터는 board관련 페이지 서비스 입니다//////////////////////////////////

	@Override
	public BookDTO selectOneProcess(int num) {
		
		return dao.selectOne(num);
	}
	
	@Override
	public int countProcess() {
		// TODO Auto-generated method stub
		return dao.count();
	}
	
	@Override
	public List<BookDTO> booklistProcess(PageDTO pv) {
		return dao.booklist(pv);
	}
	//카테고리 서비스
	@Override
	public List<BookDTO> categoryBookListProcess(PageDTO pv, int book_category) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", pv.getStartRow());
		map.put("endRow", pv.getEndRow());
		map.put("book_category", book_category);
		return dao.categoryList(map);
		
	}

	@Override
	public List<BookDTO> allBookListProcess(PageDTO pv) {
		
		return dao.allBookList(pv);
	}
	
	@Override
	public int countCategoryProcess(int book_category) {
		
		return dao.countCategory(book_category);
	}
	
	@Override
	public int countSearchProcess(String searchWord) {
		
		return dao.countSearch(searchWord);
	}
		
	@Override
	public List<BookDTO> searchListProcess(PageDTO pv) {
		
		return dao.searchList(pv);
	}
	
	/////////////////////여기까지 board관련 페이지 서비스 입니다//////////////////////////////////
	
	
	
/////////////////////////////	여기서부터 관리자 페이지 서비스입니다//////////
	
	@Override
	public List<BookDTO> listProcess() {
//		System.out.println("북서비스");
		return dao.list();
	}
	
	@Override
	public void statusCheckProcess(int num) {
		BookDTO dto = new BookDTO();
		dto=dao.selectOne(num);
		
		if(dto.getBook_status()==1) {
			statusChangeOffProcess(num);
		}else if(dto.getBook_status()==0) {
			statusChangeOnProcess(num);
		}		
	}
	
	@Override
	public BookDTO contentProcess(int num) {
		
		return dao.content(num);
	}
	
	
	@Override
	public void statusChangeOffProcess(int num) {
		
		dao.statusChangeOff(num);
	}
	
	@Override
	public void statusChangeOnProcess(int num) {
		
		 dao.statusChangeOn(num);
	}
	
	
	
	
	@Override
	public void stockCheckProcess(int num) {
		BookDTO dto = new BookDTO();
		dto=dao.selectOne(num);
		
		if(dto.getBook_stock()==1) {
			stockChangeOffProcess(num);
		}else if(dto.getBook_stock()==0) {
			stockChangeOnProcess(num);
		}
		
	}
	
	@Override
	public void stockChangeOnProcess(int num) {
		dao.stockChangeOn(num);
		
	}
	
	@Override
	public void stockChangeOffProcess(int num) {
		dao.stockChangeOff(num);
		
	}
	
	@Override
	public void newBookIDProcess(BookDTO dto) {
//		새로운 도서의 책코드를 생성해줘야한다. 간단하게 타입 코드랑 현재시간 조합
		String bookcode = null;
		String type = null;
		
		Date now = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyMMddHHmmss");
		
		/*
		 * type은 책의 종류에 따라 코드를 부여해주는것
		 * book_category = 1 = 소설 =booktype=AA
		 * */
		
		
		if(dto.getBook_category()==1) {
			type="AA";
			bookcode= type+date.format(now);
		}
		
		dto.setBook_id(bookcode);
		
	}
	
	@Override
	public void newBookProcess(BookDTO dto) {
		dao.saveNewBook(dto);
		
	}
	
	
	@Override
	public void deleteDataProcess(int num, String urlpath) {
		
		String path =dao.getFile(num);
		if(path!=null) {
			File fe = new File(urlpath, path);
			fe.delete();
		}
		
		dao.deleteData(num);
		
	}
	@Override
	public void updateBookProcess(BookDTO dto, String urlpath) {
		String fileName = dto.getBook_img();
		if(fileName!=null) { //수정한 파일이 있으면
			String path = dao.getFile(dto.getNum());
			if(!path.isEmpty()) {
				File fe = new File(urlpath, path);
				fe.delete();
			}
		}
		
		System.out.println(dto.getBook_title()+"서비스 단계");
		
//		System.out.println(dto.toString());
		
		
		dao.updateBook(dto);
	}

	

	
	




	
//	/////////////////////////////여기까지 관리자 페이지 서비스입니다.////////////////////
	
}
