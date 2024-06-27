package com.Gangothri.bean;

import javax.persistence.Entity;


import javax.persistence.Id;

@Entity
public class Flight {
	@Id
	private Long flightNumber;
	private String carrierName;
	private Long routeId;
	private Integer seatCapacity;
	private String departure;
	private String arrival;
	public Flight() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Flight(Long flightNumber, String carrierName, Long routeId, Integer seatCapacity, String depurture,
			String arrival) {
		super();
		this.flightNumber = flightNumber;
		this.carrierName = carrierName;
		this.routeId = routeId;
		this.seatCapacity = seatCapacity;
		this.departure = depurture;
		this.arrival = arrival;
		
	}
	public Long getFlightNumber() {
		return flightNumber;
	}
	public void setFlightNumber(Long flightNumber) {
		this.flightNumber = flightNumber;
	}
	public String getCarrierName() {
		return carrierName;
	}
	public void setCarrierName(String carrierName) {
		this.carrierName = carrierName;
	}
	public Long getRouteId() {
		return routeId;
	}
	public void setRouteId(Long routeId) {
		this.routeId = routeId;
	}
	public Integer getSeatCapacity() {
		return seatCapacity;
	}
	public void setSeatCapacity(Integer seatCapacity) {
		this.seatCapacity = seatCapacity;
	}
	public String getDepurture() {
		return departure;
	}
	public void setDepurture(String depurture) {
		this.departure = depurture;
	}
	public String getArrival() {
		return arrival;
	}
	public void setArrival(String arrival) {
		this.arrival = arrival;
	}
	
	
	
	
	

}
