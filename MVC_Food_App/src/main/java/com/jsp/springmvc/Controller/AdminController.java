package com.jsp.springmvc.Controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.DTO.Admin;
import com.jsp.springmvc.Dao.AdminDao;

@Controller
public class AdminController {

	@Autowired
	AdminDao adminDao;
	
	@RequestMapping("/adadmin")
	public ModelAndView addadmin() {
		ModelAndView mav=new ModelAndView("newadmin");
		Admin ad=new Admin();
		mav.addObject("admin", ad);
		return mav;
	}
	
	@RequestMapping("/addadmin")
	public ModelAndView saveadmin(@ModelAttribute("Admin")Admin a) {
		ModelAndView mav=new ModelAndView("adminlogin");
		adminDao.saveAdmin(a);
		mav.addObject("mesg", "admin data saved");
		return mav;
	}

    
	@RequestMapping("/adminvalidate")
	public ModelAndView Login(HttpServletRequest request) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Admin admin = adminDao.fetchAdminByEmailAndPassword(email, password);
		if (admin != null) {
			ModelAndView mav = new ModelAndView("adminoptions");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("adminlogin");
			mav.addObject("mesg", "invalid credentials");
			return mav;
		}

	}

}
