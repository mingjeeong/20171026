package com.work.cosmetic;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.work.model.User;
import com.work.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	
	private UserService service;
	@Autowired
	public void setUserService(UserService service) {
		this.service = service;
	}
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping("loginView.do")
	public String loginView() {
		return "user/login";
	}
	
	@RequestMapping("joinView.do")
	public String joinView() {
		return "user/join";
	}
	
	@RequestMapping("login.do")
	public ModelAndView login(HttpSession session, String userId,String userPw) {
		System.out.println(">>>login "+userId+ " "+userPw);
		
		System.out.println(session.isNew()+" "+session.getId());
		ModelAndView mv = new ModelAndView();
		System.out.println(service.login(userId,userPw));
		
		if(userId == null || userId.trim().length() == 0
		         || userPw == null || userPw.trim().length() == 0) {
			mv.addObject("message", "아이디, 비밀번호 모두 입력하시기 바랍니다.");
	         mv.setViewName("user/message");
		}
		else if(service.login(userId,userPw)!=null) {
			
			session.setAttribute("userId", userId);
	         mv.addObject("userId", userId);
	         mv.addObject("successMessage", "사용자 인증 완료");
	         mv.setViewName("user/service");
			
		}else {
			 mv.addObject("message", "회원정보를 다시 확인하시기 바랍니다.");
	         mv.setViewName("user/message");
		}
		return mv;
		
	}
	
	@RequestMapping("join.do")
	public ModelAndView join(User user) {
		ModelAndView mv = new ModelAndView();
		int rows = service.join(user);
		System.out.println("rows : " + rows);
		if(user.getUserId().trim().length()==0 || user.getUserId()==null||
				user.getUserPw().trim().length()==0||user.getUserPw()==null||
				user.getUserName().trim().length()==0||user.getUserName()==null) {
			mv.addObject("message", "아이디, 비밀번호, 이름  모두 입력하시기 바랍니다.");
	        mv.setViewName("user/message");
		}else if(rows != 0) {
			StringBuilder message = new StringBuilder();
			message.append(user.getUserName()).append("(");
			message.append(user.getUserId()).append(")");
			message.append("님 회원가입 완료되었습니다. 로그인후 서비스를 이용하시기 바랍니다.");
			mv.addObject("message", message);
			mv.setViewName("user/login"); // 로그인 페이지 응답 이동
		}else {
			mv.addObject("check", "회원가입 실패하였습니다. 정보를 다시 확인하시기 바랍니다.");
			mv.setViewName("user/join");
		}
		return mv;
	}
	

	
}
