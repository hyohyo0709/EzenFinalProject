package ezenproject2.controller;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ezenproject2.dto.BookDTO;
import ezenproject2.dto.MemberDTO;
import ezenproject2.dto.OrderDTO;
import ezenproject2.service.BookService;
import ezenproject2.service.MemberService;
import ezenproject2.service.MemberServiceImp;
import ezenproject2.service.OrderService;


// http://localhost:8090/views/index.jsp

@Controller
public class MainController {

	@Autowired
	private BookService bservice;
	
	@Autowired
	private MemberService mservice;
	private OrderService oservice;
	private BookDTO bdto;
	private MemberDTO mdto;
	private OrderDTO odto;
	


public MainController() {
	
	// TODO Auto-generated constructor stub
}

@RequestMapping(value = "/member_joinForm", method =  RequestMethod.GET)
//false이면 안받아도 된다는 말
private ModelAndView form(@RequestParam(value= "result", required=false) String result,
							  @RequestParam(value= "action", required=false) String action,
							  HttpServletRequest request, 
							  HttpServletResponse response) throws Exception {
	//System.out.println("확인");

	String viewName = (String)request.getAttribute("viewName");
//	System.out.println("memberForm viewName : "+ viewName);
	HttpSession session = request.getSession();
	session.setAttribute("action", action); 
	
	ModelAndView mav = new ModelAndView();
	mav.addObject("result",result);
	mav.setViewName(viewName);
	return mav;
}


@RequestMapping(value = "/member_join", method = RequestMethod.POST)
public ModelAndView addMember(@ModelAttribute("member")MemberDTO member,
							 HttpServletRequest request, HttpServletResponse response) throws Exception{
	request.setCharacterEncoding("utf-8");
	
	int result=0;
	result= mservice.addMember(member); 	
	ModelAndView mav= new ModelAndView("redirect:/views/index.jsp");
	return mav;
}

@RequestMapping("/order/order_detail.do")
public String order_detail() {
    return "/order_detail";
}




}//end class
