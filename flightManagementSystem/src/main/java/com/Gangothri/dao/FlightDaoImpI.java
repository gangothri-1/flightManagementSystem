package com.Gangothri.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.Gangothri.bean.Flight;





@Repository
@Service
public class FlightDaoImpI  implements  FlightDao{

		
			
			@Autowired
			private FlightRepository repository;
			
			@Override
			public void addFlight(Flight flight) {
				repository.save(flight);
			}

			@Override
			public Flight showFlight(Long id) {
				return repository.findById(id).get();
			}

			@Override
			public List<Flight> showAllFlights() {
				return repository.findAll();
			}

			/*@Override
			public List<Long> findAllFlightNumbers() {
				return repository.findAllFlightNumbers();
			}*/
			

			

			

			@Override
			public void save(Flight flight) {
				// TODO Auto-generated method stub
				
			}

			@Override
			public List<Long> findAllFlights() {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public List<Flight> findByRouteId(Long routeId) {
				// TODO Auto-generated method stub
				return null;
			}

			
			
			
		}


