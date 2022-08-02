/*
 * package ezenproject.interceptor;
 * 
 * import java.util.Arrays; import java.util.List;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import org.springframework.stereotype.Component; import
 * org.springframework.web.servlet.HandlerInterceptor; import
 * org.springframework.web.servlet.ModelAndView;
 * 
 * @Component public class Login_Intereceptor implements HandlerInterceptor{
 * 
 * public Login_Intereceptor() { } public List loginEssential =
 * Arrays.asList("/member/**","/book/book_detail/**","/order/**","/cart/**");
 * public List loginInessential = Arrays.asList("/book/**");
 * 
 * @Override public boolean preHandle(HttpServletRequest request,
 * HttpServletResponse response, Object handler) throws Exception { String
 * isLogOn = (String)request.getSession().getAttribute("isLogOn"); if(isLogOn
 * !=null) {return true;} else { String destUri = request.getRequestURI();
 * String destQuery = request.getQueryString(); String dest = (destQuery ==
 * null) ? destUri : destUri+"?"+destQuery;
 * request.getSession().setAttribute("dest", dest);
 * response.sendRedirect("/member/loginForm.do"); } return false; }
 * 
 * @Override public void postHandle(HttpServletRequest request,
 * HttpServletResponse response, Object handler, ModelAndView modelAndView)
 * throws Exception {
 * 
 * }
 * 
 * @Override public void afterCompletion(HttpServletRequest request,
 * HttpServletResponse response, Object handler, Exception ex) throws Exception
 * { } }
 * 
 */