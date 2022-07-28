package ezenproject.controller;

import java.io.File;


import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ezenproject.dto.BookDTO;
import ezenproject.dto.MemberDTO;
import ezenproject.dto.OrderDTO;
import ezenproject.service.BookService;
import ezenproject.service.MemberService;
import ezenproject.service.OrderService;
import ezenproject.dto.PageDTO;

// http://localhost:8090/

@CrossOrigin("*")
@Controller
public class MainController {

	@Autowired
	private BookService bservice;
	
	@Autowired
	private MemberService mservice;
	
	@Autowired
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
	
	
	// http://localhost:8090/
	@RequestMapping(value = {"/", "/index.do"}, method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request, ModelAndView mav ) {
		String viewname = (String) request.getAttribute("viewName");
		if(viewname==null) {
			viewname = "/index";
		}
		
		mav.setViewName(viewname);
		
		return mav;
	}
	
//	Form으로 끝나는 친구들 연결 시키는거
	@RequestMapping(value = "/member/*Form.do", method = RequestMethod.GET)
	private ModelAndView form(@RequestParam(value= "result", required=false) String result,
            @RequestParam(value= "action", required=false) String action,
            HttpServletRequest request, 
            HttpServletResponse response) {
		String viewName = (String) request.getAttribute("viewName");
		HttpSession session = request.getSession();
		session.setAttribute("action", action);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName(viewName);
		return mav;
	}
	
//	로그인 하는 행위
	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST )
	public ModelAndView memberLoginMethod(@ModelAttribute("member") MemberDTO dto, RedirectAttributes rAttr,
			HttpServletRequest request,  HttpServletResponse response
			) throws Exception {
		ModelAndView mav = new ModelAndView();
		mdto = mservice.memberLogin(dto);
		if(mdto!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", mdto);
			session.setAttribute("isLogOn", true);
			
			String action = (String) session.getAttribute("action");
			session.removeAttribute("action");
			if(action!=null) {
				mav.setViewName("redirect:" + action);
			}else {
				mav.setViewName("redirect:/");
			}
		}else {
			rAttr.addAttribute("result", "loginFailed");
			mav.setViewName("redirect:/member/loginForm.do");
		}
		
		return mav;
	}
	
	
//	로그아웃 하는 행위
	@RequestMapping(value = "/member/logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogin");
		
		return "redirect:/";
	}

//////////////////주문페이지 ////////////////////////////////////////////////////////////
	
//	http://localhost:8090/order_detail.do?currentPage=1&num=1
	
	@RequestMapping("/order_detail.do")
	public ModelAndView viewMethod(HttpServletRequest request,int currentPage,int num,ModelAndView mav) {
		//BoardDTO dto= service.contentProcess(num);
		String viewName= (String)request.getAttribute("viewName");
		mav.addObject("mdto",mservice.selectOneProcess(num));
		mav.addObject("bdto",bservice.selectOneProcess(num));
		mav.addObject("currentPage",currentPage);
		//mav.setViewName("/board/view");
		mav.setViewName(viewName);
		return mav;
		
	}


////////////////////////////////////////////////////여기부터 관리자 페이지 메소드입니다.////////////////////

//	관리자 페이지 제품 리스트 출력
	@ResponseBody
	@RequestMapping(value = "/books/list")
	public Map<String, Object> listBookMethod(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<BookDTO> alist = bservice.listProcess();
		
//		System.out.println(alist.get(0).getBook_title());
		map.put("alist", alist);
		
		return map;
	}
	
	
//	판매 유무 변경
	@ResponseBody
	@RequestMapping(value = "/books/statuschange/{num}", method = RequestMethod.PUT)
	public void statusBookChangeMethod(@PathVariable("num") int num) {
		
		bservice.statusCheckProcess(num);
		
	}
	
//	재고 유무 변경
	@ResponseBody
	@RequestMapping(value = "/books/stockchange/{num}", method = RequestMethod.PUT)
	public void stockBookChangeMethod(@PathVariable("num") int num) {
		
		bservice.stockCheckProcess(num);
		
	}
	
//	새로운 제품 등록
	@ResponseBody
	@RequestMapping(value = "/books/newbooksave", method = RequestMethod.POST)
	public void newBookMethod(BookDTO dto ) {
		MultipartFile file = dto.getFilename();
		if(file!=null && !file.isEmpty()) {
			UUID ran = saveCopyFile(file);
			dto.setBook_img(ran+"_"+file.getOriginalFilename());
		}
		
		bservice.newBookIDProcess(dto);
		bservice.newBookProcess(dto);
		
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
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
//				System.out.println("파일 경로:  "+filepath);
				return ran;
				
	}
	
//	도서 제품 데이터 영구 삭제
	@ResponseBody
	@RequestMapping(value = "/books/deletdata/{num}", method = RequestMethod.DELETE)
	public void deleteBookDataMethod(@PathVariable("num") int num) {
		bservice.deleteDataProcess(num, filepath);
	}
	
	
//	도서 정보 수정 행위
	@ResponseBody
	@RequestMapping(value = "/books/updatebook", method = RequestMethod.PUT)
	public void updateBookMethod(BookDTO dto) {
		MultipartFile file = dto.getFilename();
		System.out.println(dto.getBook_title());
		if(file!=null && !file.isEmpty()) {
			UUID ran = saveCopyFile(file);
			dto.setBook_img(ran+"_"+file.getOriginalFilename());
		}
		
		bservice.updateBookProcess(dto, filepath);
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/books/selectone/{num}", method = RequestMethod.GET)
	public BookDTO selectOneBookMethod(@PathVariable("num") int num) {
		
		return bservice.selectOneProcess(num);
	}
	
	
//	관리자 페이지 회원 리스트 출력
	@ResponseBody
	@RequestMapping(value = "/members/list")
	public Map<String, Object> listMemberMethod(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		List<MemberDTO> alist = mservice.listProcess();
			
		
//		System.out.println(alist.get(0).getMember_id());
		map.put("alist", alist);
		
		return map;
	}
	
	
//	계정 상태 변경
	@ResponseBody
	@RequestMapping(value = "/members/statuschange/{num}", method = RequestMethod.PUT)
	public void statusMemberChangeMethod(@PathVariable("num") int num) {
		
		mservice.statusCheckProcess(num);
		
	}
	
	
//	계정 유형 변경
	@ResponseBody
	@RequestMapping(value = "/members/typechange/{num}", method = RequestMethod.PUT)
	public void typeMemberChangeMethod(@PathVariable("num") int num) {
		
		mservice.typeCheckProcess(num);
		
	}
	
	
//	회원 데이터 영구 삭제
	@ResponseBody
	@RequestMapping(value = "/members/deletdata/{num}", method = RequestMethod.DELETE)
	public void deleteMemberDataMethod(@PathVariable("num") int num) {
		mservice.deleteDataProcess(num);
	}
	
	
	
//	관리자 페이지 주문 리스트 출력
	@ResponseBody
	@RequestMapping(value = "/orders/list")
	public Map<String, Object> listOrderMethod(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<OrderDTO> alist = oservice.listProcess();

		map.put("alist", alist);
		
		return map;
	}
	
	
//	주문 상태 변경
	@ResponseBody
	@RequestMapping(value = "/orders/statuschange", method = RequestMethod.PUT)
	public void changeOrderStatusMethod(OrderDTO dto) {
		
		
		oservice.statusChangeProcess(dto);
		
	}
	
//	주문 데이터 영구 삭제
	@ResponseBody
	@RequestMapping(value = "/orders/deletdata/{num}", method = RequestMethod.DELETE)
	public void deleteOrderDataMethod(@PathVariable("num") int num) {
		oservice.deleteDataProcess(num);
	}
	
	
//////////////////////////////////////////////////////여기까지 관리자 페이지 메소드입니다.///////////////	
	
	
}
