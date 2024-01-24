package com.jsp.springmvc.Dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.foodapp.DTO.Products;

@Repository
public class ProductDao {
  
	@Autowired
	EntityManagerFactory emf;
	
	public void saveProduct(Products p) {
		EntityManager em=emf.createEntityManager();
		
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.persist(p);
		et.commit(); 
		
	}
	
	public List<Products> FetchAllProducts(){
		EntityManager em=emf.createEntityManager();
		Query query=em.createQuery("select p from Products p ");
		return query.getResultList();	
	}
	
	public Products findProductById(int id) {
		EntityManager em =emf.createEntityManager();
		Products p= em.find(Products.class, id);
		em.close();
		return p;
	}
	
	public void UpdateProduct(Products p) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.merge(p);
		et.commit(); 
		em.close();
        
	}

//	 
//	 
	 public void deleteProductById(int id) {
			EntityManager em=emf.createEntityManager();
			EntityTransaction et=em.getTransaction();
			Products product=em.find(Products.class, id);
			
			et.begin();
			em.remove(product);
			et.commit(); 
			em.close();
	        
		}
	 
	
	
	
}
