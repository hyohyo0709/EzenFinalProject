package ezenproject.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import ezenproject.dao.MemberDAO;

public class Cart_intereceptor implements HandlerInterceptor{
	public Cart_intereceptor() {
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		MemberDAO mdao =(MemberDAO)session.getAttribute("member");
		if(mdao == null) {
			response.sendRedirect("/book/allBooklist");
			return false;
		}else {
			return true;
		}
	}
}
