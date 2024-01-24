package com.jsp.springmvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.DTO.User;
import com.jsp.springmvc.Dao.UserDao;

@Controller
public class UserController {
	
	@Autowired
	UserDao userDao;
	
	@RequestMapping("/adduser")
	public ModelAndView adduser() {
		ModelAndView mav=new ModelAndView("adduserform");
		User u=new User();
		mav.addObject("user", u);
		return mav;
		
	}	
	
	@RequestMapping("/saveuser")
	public ModelAndView saveuser(@ModelAttribute("User") User u) {
		ModelAndView mav=new ModelAndView("adminoptions");
		userDao.saveUser(u);
		mav.addObject("message", "user saved successfully");
		return mav;
	}
	
	@RequestMapping("/uservalidate")
	public ModelAndView login(HttpServletRequest request) {
		 String email =request.getParameter("email");
		 String password=request.getParameter("password");
		 
	  	 User user=userDao.fetchUserByEmailAndPassword(email, password);
	  	if(user!=null) {
			ModelAndView mav = new ModelAndView("useroptions") ;
			HttpSession hs = request.getSession() ;
			hs.setAttribute("user", user) ;
			return mav ;
		}
			 else {
				 ModelAndView mav=new ModelAndView("userloginform");
				 mav.addObject("check","invalid Credentials");
				 return mav;
			 }
	}
	
	
}
