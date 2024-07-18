package com.Gangothri.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.Gangothri.bean.Passenger;

@Service
@Repository
public class PassengerDaoImpI implements PassengerDao {
	@Autowired
	private PassengerRepository repository;
	@Override
	public void save(Passenger passenger) {
		repository.save(passenger);
	}
	

}
