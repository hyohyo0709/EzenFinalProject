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


// http://localhost:8090/index.jsp

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
	System.out.println("확인");

	String viewName = (String)request.getAttribute("viewName");
	System.out.println("memberForm viewName : "+ viewName);
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
	ModelAndView mav= new ModelAndView("redirect:/index.jsp");
	return mav;
}

//public static String getCurrentDateTime() {
//	Date today = new Date();
//	Locale currentLocale = new Locale("KOREAN", "KOREA");
//	String pattern = "yyyyMMddHHmmss"; //hhmmss로 시간,분,초만 뽑기도 가능
//	SimpleDateFormat formatter = new SimpleDateFormat(pattern,
//			currentLocale);
//	return formatter.format(today);
//}
//
//public static long getCurrentTimeMils() {
//	return Calendar.getInstance(Locale.KOREA).getTimeInMillis();
//}
//
//public static String memNum(@Param("member_number")String member_number) {
//	getCurrentDateTime();
//	getCurrentTimeMils();
//	
//	String memNum= "mem"+getCurrentDateTime()+getCurrentTimeMils();
//	
//	return memNum.toString();
//}

//public String getUuid() {
//	//UUID 생성
//	String uuid= UUID.randomUUID().toString();
//	
//	//하이픈 제외
//	uuid = uuid.replace("-", "");
//	
//	return uuid;
//	
//}

}//end class
