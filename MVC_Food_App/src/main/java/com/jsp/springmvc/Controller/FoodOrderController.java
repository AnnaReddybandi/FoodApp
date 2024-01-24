package com.jsp.springmvc.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.DTO.FoodOrder;
import com.jsp.foodapp.DTO.Item;
import com.jsp.foodapp.DTO.Products;
import com.jsp.foodapp.DTO.User;
import com.jsp.springmvc.Dao.FoodOrderDao;
import com.jsp.springmvc.Dao.UserDao;
import com.mysql.cj.Session;

@Controller
public class FoodOrderController {

	@Autowired
	UserDao dao;
	
	@Autowired
	FoodOrderDao dao2;
	
	@RequestMapping("/addorderfood")
	public ModelAndView addFoodOrder() {
		ModelAndView mav=new ModelAndView("addfoodorder");
		FoodOrder fd=new FoodOrder();
		mav.addObject("foodorder", fd);
		return mav;
		
	}
	
	@RequestMapping("/savefoodorder")
	public ModelAndView savefoodorder(@ModelAttribute("foodorder") FoodOrder order, HttpSession session) {
		ModelAndView mav=new ModelAndView("redirect:/viewallproduct");
	    session.setAttribute("foodorder", order);
		return mav;
	}
	
	@RequestMapping("/savefoodorders")
	public ModelAndView saveFoodOrder(HttpSession session) {
		User user =(User)  session.getAttribute("user");
		FoodOrder foodorder=(FoodOrder)session.getAttribute("foodorder");
		
		List<FoodOrder>orders=user.getFoodOrder();
		if(orders!=null) {
			orders.add(foodorder);
			
			double sum=0;
			List<Item> items=foodorder.getItems();
			for(Item i : items) {
				sum=sum+ i.getCost();
			}
			
			foodorder.setTotalcost(sum);
			user.setFoodOrder(orders);
			foodorder.setUser(user);
		}else {
			List<FoodOrder>orders1=new ArrayList<FoodOrder>();
		
			orders1.add(foodorder);
			double sum=0;
			List<Item> items=foodorder.getItems();
			
			for(Item i : items) {
				sum=sum+ i.getCost();
			}
			foodorder.setTotalcost(sum);
			
			foodorder.setUser(user);
			user.setFoodOrder(orders1);
		}
		   dao.updateUser(user);
			ModelAndView mav=new ModelAndView("generatebill");
		return mav;
	}
	

	
	
	
	@RequestMapping("/display")
	public ModelAndView displaybill(@RequestParam("id") int id) {
		ModelAndView mav=new ModelAndView("redirect:/displaybill");
		FoodOrder food=dao2.findfoodbyid(id);
		mav.addObject("foodorder", food);
		return mav;
		
		
	}
}
