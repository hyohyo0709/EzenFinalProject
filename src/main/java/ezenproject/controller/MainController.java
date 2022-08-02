package ezenproject.controller;




import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ezenproject.dto.BoardDTO;
import ezenproject.dto.BookDTO;
import ezenproject.dto.MemberDTO;
import ezenproject.dto.OrderDTO;
import ezenproject.dto.PageDTO;
import ezenproject.service.BoardService;
import ezenproject.service.BookService;
import ezenproject.service.MemberService;
import ezenproject.service.OrderService;



// http://localhost:8090/index.jsp

@Controller
public class MainController {
	

	@Autowired
	private BookService bservice;
	@Autowired
	private MemberService mservice;
	@Autowired
	private OrderService oservice;
	@Autowired
	private BoardService service;
	
	
	
	
	@Autowired
	private BookDTO bdto;
	@Autowired
	private MemberDTO mdto;
	@Autowired
	private OrderDTO odto;
	@Autowired
	private PageDTO pdto;
	
	private int num = 1;
	
	private int currentPage;
	
	public MainController() {
		
	}
	
	//회원정보 출력
	@RequestMapping(value = "/mypage/memberdetail.do", method = RequestMethod.GET)
	public ModelAndView memberInformationMethod(ModelAndView mav)
			throws Exception {
		mdto = mservice.memberInformation(num);
		mav.addObject("memberInfo", mdto);
		mav.setViewName("/mypage/memberdetail");
		System.out.println(mdto);
		return mav;
	}
	
	//회원탈퇴
	@RequestMapping(value = "/mypage/memberdelete.do", method = RequestMethod.POST)
	public String memberInformationMethod(int num)	throws Exception {
		mservice.deleteMemberInformation(num);
		return "redirect:/index.jsp";
	}
	
	//회원정보 수정
	@RequestMapping(value = "/mypage/update.do", method = RequestMethod.POST)
	public String updateMethod(MemberDTO mdto) throws Exception {
		mservice.updateInformation(mdto);
		return "redirect:/mypage.jsp";
	}
	
	//주문 목록
	@RequestMapping(value = "/mypage/orderlist.do", method = RequestMethod.GET)
	public ModelAndView orderListMethod(ModelAndView mav) {	 
		 String mnum = "223";
		 List<OrderDTO> aList = oservice.listOrder(mnum);
		 System.out.println(aList.get(0).getOrder_cost());
		 mav.addObject("aList", aList); 
		mav.setViewName("/mypage/orderlist");
		return mav;
	} 
	
	//주문 뷰페이지
	@RequestMapping(value = "/mypage/orderdetail.do", method = RequestMethod.GET)
	public ModelAndView orderInformationMethod(ModelAndView mav, String mnum)
			throws Exception {
		odto = oservice.orderInformation(mnum);
		mav.addObject("orderInfo", odto);
		mav.setViewName("/mypage/orderdetail");
		//System.out.println(obdto.getBdto().getBook_content());
		return mav;
	}
	
	//주문 수정
	@RequestMapping(value = "/mypage/orderupdate.do", method = RequestMethod.POST)
	public String orderupdateMethod(String mnum) throws Exception {
		System.out.println(mnum);
		oservice.updateOrder(mnum);

		return "redirect:/mypage/orderlist.do";
	}
	
	//주문 취소
	@RequestMapping(value = "/mypage/orderdelete.do", method = RequestMethod.DELETE)
	public String orderdeleteMethod() throws Exception {
		oservice.deleteOrder(num);
		return "redirect:/mypage/orderlist.do";
	}
	
	//배송 확인
	@RequestMapping(value="/mypage/orderstatus.do", method = RequestMethod.GET)
	public ModelAndView orderStatusMethod(String onum, ModelAndView mav) throws Exception {
		odto = oservice.orderStatus(onum);
		mav.addObject("orderstatus", odto);
		mav.setViewName("/mypage/orderstatus");
		System.out.println(odto.getOrder_address());
		return mav;
	}
	
	//////////////////////////////////게시판////////////////////////////////////////////////
	
	//게시판 리스트
	@RequestMapping("/board/list.do")
	public ModelAndView listMethod(PageDTO pv, ModelAndView mav) {
		int totalRecord = service.countProcess();
		if (totalRecord >= 1) {
			if(pv.getCurrentPage()==0)
				currentPage = 1;
			else
				currentPage = pv.getCurrentPage();
		
		pdto = new PageDTO(currentPage, totalRecord);
		List<BoardDTO> aList = service.listProcess(pdto);
		mav.addObject("aList", aList);
		mav.addObject("pv", pdto);
		}
		mav.setViewName("board/list");
		return mav;
	}
	
	
	//게시판 글쓰기
	@RequestMapping(value = "/board/write.do", method = RequestMethod.GET)
	public ModelAndView writeMethod(BoardDTO dto,PageDTO pv, ModelAndView mav) throws Exception {
		mdto = mservice.memberInformation(2);
		if(dto.getRef()!=0) { //답변글이면
		mav.addObject("currentPage", pv.getCurrentPage());
		mav.addObject("mdto", mdto);
		mav.addObject("dto",dto);
		}
		mav.addObject("mdto", mdto);
		mav.setViewName("board/write");
		return mav;
	}
	
	@RequestMapping(value = "/board/write.do", method = RequestMethod.POST)
	public String writeProMethod(BoardDTO dto,PageDTO pv, HttpServletRequest request) {
		MultipartFile file = dto.getFilename();
		if(!file.isEmpty()) {
			UUID random = saveCopyFile(file, request);
			dto.setUpload(random + "_" + file.getOriginalFilename());
		}
		service.insertProcess(dto);
		//답변글이면
		if(dto.getRef()!=0) {
			return "redirect:/board/list.do?currentPage=" + pv.getCurrentPage();
		}else {//제목글이면
			return "redirect:/board/list.do";
		}
	}
	
	private String urlPath(HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("/");
		//C:\smart_study\spring_workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\spring08_board\temp
		//System.out.println("root:" + root);
		String saveDirectory = root + "temp" + File.separator;
		return saveDirectory;
	}
	
	//업로드 첨부파일
	private UUID saveCopyFile(MultipartFile file, HttpServletRequest request) {
		String fileName = file.getOriginalFilename();
		
		UUID random = UUID.randomUUID();
		
		File fe = new File(urlPath(request));
		if(!fe.exists()) {
			fe.mkdir();
		}
		
		File ff = new File(urlPath(request), random+"_"+fileName);
		
		try {
			FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return random;
	}
	
	//뷰페이지
	@RequestMapping("/board/view.do")
	public ModelAndView viewMethod(int currentPage, int num, ModelAndView mav) throws Exception {
		int mnum = 2;
		mav.addObject("mdto", mservice.memberInformation(mnum));
		mav.addObject("dto",service.contentProcess(num));
		mav.addObject("currentPage", currentPage);
		mav.setViewName("board/view");
		return mav;
	}
	
	//첨부파일 다운로드
	@RequestMapping("/board/contentdownload.do")
	public ModelAndView downMethod(int num, ModelAndView mav) {
		mav.addObject("num", num);
		mav.setViewName("download");
		return mav;
	}
	
	//게시글 수정
	@RequestMapping(value = "/board/update.do", method = RequestMethod.GET)
	public ModelAndView updateMethod(HttpServletRequest request, int num, int currentPage, ModelAndView mav) {
		String viewName = (String) request.getAttribute("viewName");
		mav.addObject("dto", service.contentProcess(num));
		mav.addObject("currentPage", currentPage);
		mav.setViewName(viewName);
		return mav;
	}
	
	//첨부파일 수정
	@RequestMapping(value = "/board/update.do", method = RequestMethod.POST)
	public String updateProMethod(BoardDTO dto, int currentPage, HttpServletRequest request) {
		MultipartFile file = dto.getFilename();
		if(!file.isEmpty()) {
			UUID random = saveCopyFile(file, request);
			dto.setUpload(random + "_" + file.getOriginalFilename());
		}
		
		service.updateProcess(dto, urlPath(request));
		return "redirect:/board/list.do?currentPage=" + currentPage;
	}
	
	//게시글 삭제
	@RequestMapping(value = "/board/delete.do", method = RequestMethod.GET)
	public String deleteMethod(int num, int currentPage, HttpServletRequest request) {
		service.deleteProcess(num, urlPath(request));
		return "redirect:/board/list.do?currentPage=" + currentPage;
	}
	
}
