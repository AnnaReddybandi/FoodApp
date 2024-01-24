package com.jsp.springmvc.Dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.foodapp.DTO.FoodOrder;
import com.jsp.foodapp.DTO.Products;

@Repository
public class FoodOrderDao {

	@Autowired
	EntityManagerFactory emf;
	
	
	public FoodOrder findfoodbyid(int id) {
		EntityManager em=emf.createEntityManager();
		Query query=em.createQuery("select f from FoodOrder p where id=?1 ");
		return  (FoodOrder) query.getResultList();
	}

}
