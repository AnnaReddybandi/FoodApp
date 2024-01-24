package com.jsp.springmvc.Dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.foodapp.DTO.Admin;
import com.jsp.foodapp.DTO.User;
@Repository
public class UserDao {

	@Autowired
	EntityManagerFactory emf;
	
	public void saveUser(User user) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.persist(user);
		et.commit();
	}
	
	public User fetchUserByEmailAndPassword( String email,String password) {
		EntityManager entityManager=emf.createEntityManager();
		Query query=entityManager.createQuery("select u from User u where u.email=?1 and u.password=?2 ");
		query.setParameter(1, email);
	    query.setParameter(2, password);
	    try {
	    	return  (User) query.getSingleResult();
			
		} catch (Exception e) {
			return null;
		}	  
	
	}
	
	public void updateUser(User u) {
		EntityManager entityManager = emf.createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.merge(u);
		entityTransaction.commit();
	}
	
}
