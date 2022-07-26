package ezenproject.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ezenproject.dto.BookDTO;
import ezenproject.dto.MemberDTO;
import ezenproject.dto.OrderDTO;
import ezenproject.dto.PageDTO;
import ezenproject.service.BookService;
import ezenproject.service.MemberService;
import ezenproject.service.OrderService;


// http://localhost:8090/index.jsp

@CrossOrigin("*")
@Controller
public class MainController {

	@Autowired
	private BookService bservice;
	private MemberService mservice;
	private OrderService oservice;
	private BookDTO bdto;
	private MemberDTO mdto;
	private OrderDTO odto;
	public PageDTO pdto;
	private int currentPage;
	public MainController() {
		// TODO Auto-generated constructor stub
	}
	
	@Value("${spring.servlet.multipart.location}")
	private String filepath;
	
	//모든 도서 보기 페이지//
	@ResponseBody
	@RequestMapping(value = "/book/board.do")
	public ModelAndView listMethod(HttpServletRequest request, PageDTO pv, ModelAndView mav) {
		int totalRecord = bservice.countProcess();
		String viewName = (String)request.getAttribute("viewName");
		if(totalRecord !=0) {
			if(pv.getCurrentPage()==0) {
				currentPage=1;
			}else {
				currentPage=pv.getCurrentPage();
			}
			pdto= new PageDTO(currentPage, totalRecord);
			List<BookDTO> alist = bservice.booklistProcess(pdto);		
		mav.addObject("alist", alist);
		mav.addObject("pv", pdto);
		
		}
		
		mav.setViewName(viewName);
		return mav;
	}
	//모든 도서 보기 페이지 끝//
	
	
	
	
	
	
	
	
	
//	도서 상세 페이지 들어가기
	@RequestMapping(value = "/book/book_detail.do")
	public ModelAndView viewMethod(HttpServletRequest request, int currentPage, int num, ModelAndView mav) {
		String viewName = (String)request.getAttribute("viewName");
		
		try {
			if(bservice.selectOneProcess(num).getNum()==num) {
					mav.addObject("dto", bservice.contentProcess(num));
					mav.addObject("currentPage", currentPage);
					mav.setViewName(viewName);
		}	
		}catch (Exception e) {
			viewName = "/erroralert";
			mav.setViewName(viewName);
		}
		
		return mav;
		
	}
	
	
////////////////////////////////////////////////////여기부터 관리자 페이지 메소드입니다.////////////////////

//	관리자 페이지 제품 리스트 출력
	@ResponseBody
	@RequestMapping(value = "/books/list")
	public Map<String, Object> listMethod(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<BookDTO> alist = bservice.listProcess();
		
		System.out.println(alist.get(0).getBook_title());
		map.put("alist", alist);
		ModelAndView mav = new ModelAndView();
		mav.addObject("alist", alist);
				
		return map;
	}
	
	
	
	
	
	
	
	
//	판매 유무 변경
	@ResponseBody
	@RequestMapping(value = "/books/statuschange/{num}", method = RequestMethod.PUT)
	public void statusChangeMethod(@PathVariable("num") int num) {
		
		bservice.statusCheckProcess(num);
		
	}
	
//	재고 유무 변경
	@ResponseBody
	@RequestMapping(value = "/books/stockchange/{num}", method = RequestMethod.PUT)
	public void stockChangeMethod(@PathVariable("num") int num) {
		
		bservice.stockCheckProcess(num);
		
	}
	
//	새로운 제품 등록
	@ResponseBody
	@RequestMapping(value = "/books/newbooksave", method = RequestMethod.POST)
	public String newBookMethod(BookDTO dto, HttpServletRequest request ) {
		MultipartFile file = dto.getFilename();
		if(file!=null && !file.isEmpty()) {
			UUID ran = saveCopyFile(file);
			dto.setBook_img(ran+"_"+file.getOriginalFilename());
		}
		
		bservice.newBookIDProcess(dto);
		bservice.newBookProcess(dto);
		return "redirect:/books/list";
	}
	
	
//	책 표지 등록
	private UUID saveCopyFile(MultipartFile file) {
		String filename = file.getOriginalFilename();
		
		//중복 파일명을 처리하기 위해 난수 발생
				UUID ran = UUID.randomUUID();
				
				File fe= new File(filepath); // 경로가 없으면 만들어라
				if(!fe.exists()) {
					fe.mkdirs();
				}
				
				File ff = new File(filepath, ran + "_" + filename);
				
				try {
					FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));
					
				} catch (IOException e) {
					e.printStackTrace();
				}
				return ran;
				
	}
	
//	도서 제품 데이터 영구 삭제
	@ResponseBody
	@RequestMapping(value = "/books/deletdata/{num}", method = RequestMethod.DELETE)
	public void deleteDataMethod(@PathVariable("num") int num) {
		bservice.deleteDataProcess(num, filepath);
	}
	
	
//////////////////////////////////////////////////////여기까지 관리자 페이지 메소드입니다.///////////////	
	
	
}
