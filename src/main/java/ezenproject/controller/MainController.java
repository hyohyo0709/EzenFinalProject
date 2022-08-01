package ezenproject.controller;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import ezenproject.dto.BookDTO;
import ezenproject.dto.MemberDTO;
import ezenproject.dto.OrderDTO;
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
	private BookDTO bdto;
	@Autowired
	private MemberDTO mdto;
	@Autowired
	private OrderDTO odto;
	
	private int num = 1;

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
}
