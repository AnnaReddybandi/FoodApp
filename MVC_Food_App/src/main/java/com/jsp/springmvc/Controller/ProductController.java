package com.jsp.springmvc.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.DTO.Products;
import com.jsp.springmvc.Dao.ProductDao;

@Controller
public class ProductController {
 
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/addproduct")
	public ModelAndView addproduct() {
		ModelAndView mav=new ModelAndView("addproducts");
		Products p=new Products();
		mav.addObject("Products", p);
		return mav;
	}
	
	@RequestMapping("/saveproducts")
	public ModelAndView saveproduct(@ModelAttribute("Products") Products p) {
		ModelAndView mav=new ModelAndView("adminoptions");
		productDao.saveProduct(p);
		mav.addObject("products", "saved"); 
		return mav;
		
	}
	
	@RequestMapping("/veiwallproducts")
	public ModelAndView ViewAllproducts(){
		ModelAndView mav=new ModelAndView("allproduct");
		 List<Products> products=productDao.FetchAllProducts();
		 mav.addObject("productslist", products);
		return mav;
		
	}
	
	@RequestMapping("/update")
	public ModelAndView update(@RequestParam("id") int id) {
		ModelAndView mav=new ModelAndView("updateproduct");
		Products product=productDao.findProductById(id);
		mav.addObject("productinfo", product);
		return mav;	
	}
	

	@RequestMapping("/updateProduct")
	public ModelAndView UpdateProduct(@ModelAttribute("productinfo") Products products) {
		ModelAndView mav=new ModelAndView("adminoptions");
		productDao.UpdateProduct(products);
		return mav;
	}
	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam("id") int id) {
    	ModelAndView mav=new ModelAndView("redirect:/veiwallproducts");
    	
    	productDao.deleteProductById(id);
    	
		return mav;	
    }
	
	@RequestMapping("/viewallproduct")
	public ModelAndView viewAllProduct() {
		ModelAndView mav = new ModelAndView("displayallproducts") ;
		List<Products> products = productDao.FetchAllProducts() ;
		mav.addObject("productlist", products) ;
		return mav ;
	}
	
	
	
}
