package com.lti.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.component.UserRegisterException;
import com.lti.entity.Bike;
import com.lti.entity.Car;

@Repository
public class GenericDao {

	@PersistenceContext
	protected EntityManager entityManager;
	
	@Transactional
	public void add(Object obj) {
try {
		entityManager.merge(obj);
	}catch(DataIntegrityViolationException e) {
		throw new UserRegisterException("Email already Exist",e);
	}
	}

	public <T> List<T> fetchAll(Class<T> clazz) {
		String jpql = "select obj from " + clazz.getName() + " as obj";
		return entityManager.createQuery(jpql, clazz).getResultList();
	}

	public List<Car> fetchAllCars() {
		return entityManager.createQuery("select c from Car c").getResultList();
	}

	public void addBike(Object obj) {
		entityManager.persist(obj);
	}

	public List<Bike> fetchAllBikes() {
		return entityManager.createQuery("select b from Bike b").getResultList();
	}

}
