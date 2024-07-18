package com.Gangothri.service;

import java.time.LocalDate;

import java.time.Period;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Gangothri.bean.Flight;
import com.Gangothri.bean.Passenger;
import com.Gangothri.dao.FlightDao;


@Service
public class TicketService {
	@Autowired
    private FlightDao flightDao;
	
	private int ageCalculation(String dob) {
		LocalDate today=LocalDate.now();
		String dateArr[]=dob.split("-");
		LocalDate birthDay=LocalDate.of(Integer.parseInt(dateArr[0]),Integer.parseInt(dateArr[1]),Integer.parseInt(dateArr[2]));
		Period period=Period.between(birthDay,today);
		int age=period.getYears();
		return age;
	}
	public Double discountFareCalculation(Passenger passenger) {
		int age=ageCalculation(passenger.getPassengerDOB());
		double finalFare=0.0;
		if(age<=14) {
			finalFare=passenger.getFare()/2;
			}
		else if(age>=60)
		{
			finalFare=passenger.getFare()-passenger.getFare()*0.30;
		}
		else {
			finalFare=passenger.getFare();
		}
		return finalFare;
	}
	public boolean capacityCalculation(int numberOfSeatBooking,long flightNumber) 
	{
		Flight flight=flightDao.findFlightById(flightNumber);
		int bookedSeat=flight.getSeatBooked()+numberOfSeatBooking;
		int balance=flight.getSeatCapacity()-bookedSeat;
		if(balance<0)
			return false;
		else {
			flight.setSeatBooked(bookedSeat);
			flightDao.save(flight);
			return true;
		     }
	}
	public Double totalBillCalculation(List<Passenger> passengerList) {
		double totalValue=0.0;
		for(Passenger passenger:passengerList) {
			totalValue=totalValue+passenger.getFare();
			
		}
		return totalValue;
		
	}
}





