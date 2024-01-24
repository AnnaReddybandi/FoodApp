 package com.jsp.springmvc.Dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.foodapp.DTO.Admin;

@Repository
public class AdminDao {
	@Autowired
	EntityManagerFactory emf;
	public  void saveAdmin(Admin admin) {
		EntityManager entityManager=emf.createEntityManager();
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(admin);
		entityTransaction.commit();
	}
	 
	public Admin fetchAdminByEmailAndPassword(String email,String password) {
		EntityManager entityManager=emf.createEntityManager();
		Query query=entityManager.createQuery("select a from Admin a where a.email=?1 and a.password=?2 ");
	    query.setParameter(1, email);
	    query.setParameter(2, password);
		return  (Admin) query.getSingleResult(); 
	}
	
	
}


