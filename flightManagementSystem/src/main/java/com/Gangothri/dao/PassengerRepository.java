package com.Gangothri.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Gangothri.bean.Passenger;
import com.Gangothri.bean.TicketPassengerEmbed;


public interface PassengerRepository extends JpaRepository<Passenger,TicketPassengerEmbed>{

}
